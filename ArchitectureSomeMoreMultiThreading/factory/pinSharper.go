package factory

import (
	"go.uber.org/atomic"
	"sync"
)

type PinSharper struct {
	pins            []*Pin
	pinSharpChecker *PinSharpChecker
	lock            sync.Mutex
	pinsLeft        atomic.Uint32
}
