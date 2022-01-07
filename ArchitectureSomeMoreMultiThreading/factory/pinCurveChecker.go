package factory

import (
	"go.uber.org/atomic"
	"sync"
)

// Curvature checker class.
type PinCurveChecker struct {
	// Pins which curvature is currently being checked.
	pins []*Pin
	// The grinder man whom curvature checker is going to give pins.
	pinSharper *PinSharper
	// Thread lock.
	lock sync.Mutex
	// Number of total pins, which are still in process of approving / sharpening.
	pinsLeft *atomic.Uint32
}

// Constructor.
func NewCurve(sharp *PinSharper, pinsLeft *atomic.Uint32) *PinCurveChecker {
	curve := new(PinCurveChecker)
	curve.pinSharper = sharp
	curve.pinsLeft = pinsLeft
	return curve
}

// Thread run.
func (curve *PinCurveChecker) Run(wg *sync.WaitGroup) {
	defer wg.Done()
	for curve.pinsLeft.Load() > 0 {
		curve.lock.Lock()
		if len(curve.pins) == 0 {
			curve.lock.Unlock()
			continue
		}

		if curve.pins[len(curve.pins)-1].curvature < 0.5 {
			curve.lock.Unlock()
			curve.sendPin(curve.pinSharper)
			curve.lock.Lock()
		} else {
			//fmt.Printf("Curve checker disapproved and threw away a pin with curvature %f and sharpness %f\n",
			//	curve.pins[len(curve.pins)-1].curvature,
			//	curve.pins[len(curve.pins)-1].sharpness)
			curve.pinsLeft.Dec()
		}

		curve.pins = curve.pins[:len(curve.pins)-1]
		curve.lock.Unlock()
	}
}

// Getting a new pin.
func (curve *PinCurveChecker) ReceivePin(pin *Pin) {
	curve.lock.Lock()
	// Adding a new pin to our current collection.
	curve.pins = append(curve.pins, pin)
	curve.lock.Unlock()
}

// Giving away an approved pin.
func (curve *PinCurveChecker) sendPin(sharp *PinSharper) {
	curve.lock.Lock()
	//fmt.Printf("Curvature checker approved and gave grinder man a pin with curvature %f and sharpness %f\n",
	//	curve.pins[len(curve.pins)-1].curvature,
	//	curve.pins[len(curve.pins)-1].sharpness)
	sharp.receivePin(curve.pins[len(curve.pins)-1])
	curve.lock.Unlock()
}
