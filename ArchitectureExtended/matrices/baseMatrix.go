package matrices

import "os"

// Matrix interface.
type BaseMatrix interface {
	// File input.
	In(line string)

	// Random input.
	RandomIn()

	// File output
	Out(f *os.File)

	// Returns average of all elements of matrix.
	GetAverage() float64
}
