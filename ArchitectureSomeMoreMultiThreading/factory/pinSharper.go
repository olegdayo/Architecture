package factory

import (
	"go.uber.org/atomic"
	"math"
	"sync"
)

type PinSharper struct {
	pins            []*Pin
	pinSharpChecker *PinSharpChecker
	lock            sync.Mutex
	pinsLeft        *atomic.Uint32
}

func NewSharp(checker *PinSharpChecker, pinsLeft *atomic.Uint32) *PinSharper {
	sharp := new(PinSharper)
	sharp.pinSharpChecker = checker
	sharp.pinsLeft = pinsLeft
	return sharp
}

func (sharp *PinSharper) Run(wg *sync.WaitGroup) {
	defer wg.Done()
	for sharp.pinsLeft.Load() > 0 {
		sharp.lock.Lock()
		if len(sharp.pins) == 0 {
			sharp.lock.Unlock()
			continue
		}

		sharp.pins[len(sharp.pins)-1].sharpness = math.Min(sharp.pins[len(sharp.pins)-1].sharpness*2, 1)
		//fmt.Printf("Grinder man sharped a pin, now it has curvature %f and sharpness %f\n",
		//	sharp.pins[len(sharp.pins)-1].curvature,
		//	sharp.pins[len(sharp.pins)-1].sharpness)

		sharp.lock.Unlock()
		sharp.sendPin(sharp.pinSharpChecker)
	}
}

func (sharp *PinSharper) receivePin(pin *Pin) {
	sharp.lock.Lock()
	// Adding a new pin to our current collection.
	sharp.pins = append(sharp.pins, pin)
	sharp.lock.Unlock()
}

func (sharp *PinSharper) sendPin(checker *PinSharpChecker) {
	sharp.lock.Lock()
	//fmt.Printf("Grinder man gave sharp checker a pin with curvature %f and sharpness %f\n",
	//	sharp.pins[len(sharp.pins)-1].curvature,
	//	sharp.pins[len(sharp.pins)-1].sharpness)
	checker.receivePin(sharp.pins[len(sharp.pins)-1])
	sharp.pins = sharp.pins[:len(sharp.pins)-1]
	sharp.lock.Unlock()
}
