package factory

import (
	"go.uber.org/atomic"
	"math"
	"sync"
)

type PinSharper struct {
	// Pins which are currently being sharpened.
	pins []*Pin
	// The sharp checker whom grinder man is going to give pins.
	pinSharpChecker *PinSharpChecker
	// Thread lock.
	lock sync.Mutex
	// Number of total pins, which are still in process of approving / sharpening.
	pinsLeft *atomic.Uint32
}

// Constructor.
func NewSharp(checker *PinSharpChecker, pinsLeft *atomic.Uint32) *PinSharper {
	sharp := new(PinSharper)
	sharp.pinSharpChecker = checker
	sharp.pinsLeft = pinsLeft
	return sharp
}

// Thread run.
func (sharp *PinSharper) Run(wg *sync.WaitGroup) {
	// Worker has done his job.
	defer wg.Done()
	for sharp.pinsLeft.Load() > 0 {
		sharp.lock.Lock()

		// If worker has no pins for now.
		if len(sharp.pins) == 0 {
			sharp.lock.Unlock()
			continue
		}

		// Sharpening the pin.
		sharp.pins[len(sharp.pins)-1].sharpness = math.Min(sharp.pins[len(sharp.pins)-1].sharpness*2, 1)
		// fmt.Printf("Grinder man sharped a pin, now it has curvature %f and sharpness %f\n",
		// 	 sharp.pins[len(sharp.pins)-1].curvature,
		//	 sharp.pins[len(sharp.pins)-1].sharpness)

		sharp.lock.Unlock()
		sharp.sendPin(sharp.pinSharpChecker)
	}
}

// Getting a new pin.
func (sharp *PinSharper) receivePin(pin *Pin) {
	sharp.lock.Lock()
	// Adding a new pin to our current collection.
	sharp.pins = append(sharp.pins, pin)
	sharp.lock.Unlock()
}

// Giving away an approved pin.
func (sharp *PinSharper) sendPin(checker *PinSharpChecker) {
	sharp.lock.Lock()
	// fmt.Printf("Grinder man gave sharp checker a pin with curvature %f and sharpness %f\n",
	// 	 sharp.pins[len(sharp.pins)-1].curvature,
	// 	 sharp.pins[len(sharp.pins)-1].sharpness)
	// Sending the pin.
	checker.receivePin(sharp.pins[len(sharp.pins)-1])
	// The pin was sent.
	sharp.pins = sharp.pins[:len(sharp.pins)-1]
	sharp.lock.Unlock()
}
