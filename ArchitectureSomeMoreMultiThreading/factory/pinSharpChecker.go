package factory

import (
	"go.uber.org/atomic"
	"sync"
)

type PinSharpChecker struct {
	pins            []*Pin
	pinSharpChecker *PinSharpChecker
	lock            sync.Mutex
	pinsLeft        atomic.Uint32
	ans             []*Pin
}
