package factory

import (
	"fmt"
	"go.uber.org/atomic"
	"sync"
)

type PinSharpChecker struct {
	// Pins which sharpness is currently being checked.
	pins []*Pin
	// Thread lock.
	lock sync.Mutex
	// Number of total pins, which are still in process of approving / sharpening.
	pinsLeft *atomic.Uint32
	// The resulting vector of pins.
	ans []*Pin
}

// Constructor.
func NewCheck(pinsLeft *atomic.Uint32) *PinSharpChecker {
	checker := new(PinSharpChecker)
	checker.pinsLeft = pinsLeft
	return checker
}

// Thread run.
func (checker *PinSharpChecker) Run(wg *sync.WaitGroup) {
	// Worker has done his job.
	defer wg.Done()
	for checker.pinsLeft.Load() > 0 {
		checker.lock.Lock()

		// If worker has no pins for now.
		if len(checker.pins) == 0 {
			checker.lock.Unlock()
			continue
		}

		if checker.pins[len(checker.pins)-1].sharpness > 0.75 {
			// Good pin.
			checker.lock.Unlock()
			checker.returnPin()
			checker.lock.Lock()
		} else {
			// Bad pin.
			// fmt.Printf("Sharp checker disapproved and threw away a pin with curvature %f and sharpness %f\n",
			//	 checker.pins[len(checker.pins)-1].curvature,
			//	 checker.pins[len(checker.pins)-1].sharpness)
			checker.pinsLeft.Dec()
		}

		// The pin was sent.
		checker.pins = checker.pins[:len(checker.pins)-1]
		checker.lock.Unlock()
	}
}

// Getting a new pin.
func (checker *PinSharpChecker) receivePin(pin *Pin) {
	checker.lock.Lock()
	// Adding a new pin to our current collection.
	checker.pins = append(checker.pins, pin)
	checker.lock.Unlock()
}

// Giving away an approved pin.
func (checker *PinSharpChecker) returnPin() {
	checker.lock.Lock()
	// fmt.Printf("Sharp checker approved a pin with curvature %f and sharpness %f\n",
	//	checker.pins[len(checker.pins)-1].curvature,
	//	checker.pins[len(checker.pins)-1].sharpness)
	checker.pinsLeft.Dec()
	// Updating result.
	checker.ans = append(checker.ans, checker.pins[len(checker.pins)-1])
	checker.lock.Unlock()
}

// Outputting the answer.
func (checker *PinSharpChecker) Output() {
	fmt.Println("\n\nPins, which were successfully sharpened:")
	for i := 0; i < len(checker.ans); i++ {
		fmt.Printf("%d). %s\n", i, checker.ans[i].ToString())
	}
}
