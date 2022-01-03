package factory

import (
	"go.uber.org/atomic"
	"sync"
)

type PinCurveChecker struct {
	pins       []*Pin
	pinSharper *PinSharper
	lock       sync.Mutex
	pinsLeft   atomic.Uint32
}
