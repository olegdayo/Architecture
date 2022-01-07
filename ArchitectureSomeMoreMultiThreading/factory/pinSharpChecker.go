package factory

import (
	"fmt"
	"go.uber.org/atomic"
	"sync"
)

type PinSharpChecker struct {
	pins     []*Pin
	lock     sync.Mutex
	pinsLeft *atomic.Uint32
	ans      []*Pin
}

func NewCheck(pinsLeft *atomic.Uint32) *PinSharpChecker {
	checker := new(PinSharpChecker)
	checker.pinsLeft = pinsLeft
	return checker
}

func (checker *PinSharpChecker) Run(wg *sync.WaitGroup) {
	defer wg.Done()
	for checker.pinsLeft.Load() > 0 {
		checker.lock.Lock()
		if len(checker.pins) == 0 {
			checker.lock.Unlock()
			continue
		}

		if checker.pins[len(checker.pins)-1].sharpness > 0.75 {
			checker.lock.Unlock()
			checker.returnPin()
			checker.lock.Lock()

		} else {
			//fmt.Printf("Sharp checker disapproved and threw away a pin with curvature %f and sharpness %f\n",
			//	checker.pins[len(checker.pins)-1].curvature,
			//	checker.pins[len(checker.pins)-1].sharpness)
			checker.pinsLeft.Dec()
		}

		checker.pins = checker.pins[:len(checker.pins)-1]
		checker.lock.Unlock()
	}
}

func (checker *PinSharpChecker) receivePin(pin *Pin) {
	checker.lock.Lock()
	// Adding a new pin to our current collection.
	checker.pins = append(checker.pins, pin)
	checker.lock.Unlock()
}

func (checker *PinSharpChecker) returnPin() {
	checker.lock.Lock()
	//fmt.Printf("Sharp checker approved a pin with curvature %f and sharpness %f\n",
	//	checker.pins[len(checker.pins)-1].curvature,
	//	checker.pins[len(checker.pins)-1].sharpness)
	checker.pinsLeft.Dec()
	checker.ans = append(checker.ans, checker.pins[len(checker.pins)-1])
	checker.lock.Unlock()
}

func (checker *PinSharpChecker) Output() {
	fmt.Println("\n\nPins, which were successfully sharpened:")

	for i := 0; i < len(checker.ans); i++ {
		fmt.Printf("%d). %s\n", i, checker.ans[i].ToString())
	}
}
