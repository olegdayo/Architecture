package factory

import (
	"go.uber.org/atomic"
	"sync"
)

type PinSharpChecker struct {
	pins     []*Pin
	lock     sync.Mutex
	pinsLeft atomic.Uint32
	ans      []*Pin
}
