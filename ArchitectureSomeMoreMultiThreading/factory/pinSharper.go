package factory

import (
	"fmt"
	"go.uber.org/atomic"
	"sync"
)

type PinSharper struct {
	pins            []*Pin
	pinSharpChecker *PinSharpChecker
	lock            sync.Mutex
	pinsLeft        atomic.Uint32
}

func (sharp *PinSharper) run() {
}

func (sharp *PinSharper) receivePin(pin *Pin) {
	sharp.lock.Lock()
	// Adding a new pin to our current collection.
	sharp.pins = append(sharp.pins, pin)
	sharp.lock.Unlock()
}

func (sharp *PinSharper) sendPin(checker *PinSharpChecker) {
	sharp.lock.Lock()
	fmt.Printf("Curvature checker approved and gave grinder man a pin with curvature %f and sharpness %f\n",
		sharp.pins[len(sharp.pins)-1].curvature,
		sharp.pins[len(sharp.pins)-1].sharpness)
	checker.receivePin(sharp.pins[len(sharp.pins)-1])
	sharp.pins = sharp.pins[:len(sharp.pins)-1]
	sharp.lock.Unlock()
}
