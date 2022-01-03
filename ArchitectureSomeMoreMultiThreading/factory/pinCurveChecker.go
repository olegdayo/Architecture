package factory

import (
	"fmt"
	"go.uber.org/atomic"
	"sync"
)

type PinCurveChecker struct {
	pins       []*Pin
	pinSharper *PinSharper
	lock       sync.Mutex
	pinsLeft   atomic.Uint32
}

func NewCurve(sharp *PinSharper, pinsLeft atomic.Uint32) *PinCurveChecker {
	curve := new(PinCurveChecker)
	curve.pinSharper = sharp
	curve.pinsLeft = pinsLeft
	return curve
}

func (curve *PinCurveChecker) Run() {
	curve.lock.Lock()

	if len(curve.pins) == 0 {
		curve.lock.Unlock()
		return
	}

	if curve.pins[len(curve.pins)-1].curvature < 0.5 {
		curve.lock.Unlock()
		curve.sendPin(curve.pinSharper)
	} else {
		fmt.Printf("Curve checker disapproved and threw away a pin with curvature %f and sharpness %f\n",
			curve.pins[len(curve.pins)-1].curvature,
			curve.pins[len(curve.pins)-1].sharpness)
		curve.pinsLeft.Dec()
	}

	curve.pins = curve.pins[:len(curve.pins)-1]
	curve.lock.Unlock()
}

func (curve *PinCurveChecker) ReceivePin(pin *Pin) {
	curve.lock.Lock()
	// Adding a new pin to our current collection.
	curve.pins = append(curve.pins, pin)
	curve.lock.Unlock()
}

func (curve *PinCurveChecker) sendPin(sharp *PinSharper) {
	curve.lock.Lock()
	fmt.Printf("Curvature checker approved and gave grinder man a pin with curvature %f and sharpness %f\n",
		curve.pins[len(curve.pins)-1].curvature,
		curve.pins[len(curve.pins)-1].sharpness)
	sharp.receivePin(curve.pins[len(curve.pins)-1])
	curve.lock.Unlock()
}
