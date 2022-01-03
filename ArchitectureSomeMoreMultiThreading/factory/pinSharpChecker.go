package factory

import (
	"fmt"
	"go.uber.org/atomic"
	"sync"
)

type PinSharpChecker struct {
	pins     []*Pin
	lock     sync.Mutex
	pinsLeft atomic.Uint32
	ans      []*Pin
}

func (checker *PinSharpChecker) run() {
}

func (checker *PinSharpChecker) receivePin(pin *Pin) {
	checker.lock.Lock()
	// Adding a new pin to our current collection.
	checker.pins = append(checker.pins, pin)
	checker.lock.Unlock()
}

func (checker *PinSharpChecker) sendPin() {
	checker.lock.Lock()
	fmt.Printf("Curvature checker approved and gave grinder man a pin with curvature %f and sharpness %f\n",
		checker.pins[len(checker.pins)-1].curvature,
		checker.pins[len(checker.pins)-1].sharpness)
	checker.ans = append(checker.ans, checker.pins[len(checker.pins)-1])
	checker.pins = checker.pins[:len(checker.pins)-1]
	checker.lock.Unlock()
}
