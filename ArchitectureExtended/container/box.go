package container

import (
	"ArchitectureExtended/matrices"
	"os"
)

// This structure is a wrapper used for somewhat like union in C.
type Box struct {
	// Type of matrix which is filled with info, others are nil.
	matrixType           int
	matrix               *matrices.Matrix
	diagonalMatrix       *matrices.DiagonalMatrix
	loweTriangularMatrix *matrices.LowerTriangularMatrix
}

// Output.
func (box *Box) Out(f *os.File) {
	switch box.matrixType {
	case 0:
		box.matrix.Out(f)
	case 1:
		box.diagonalMatrix.Out(f)
	case 2:
		box.loweTriangularMatrix.Out(f)
	}
}

// Getting average.
func (box *Box) GetAverage() float64 {
	switch box.matrixType {
	case 0:
		return box.matrix.GetAverage()
	case 1:
		return box.diagonalMatrix.GetAverage()
	case 2:
		return box.loweTriangularMatrix.GetAverage()
	}
	return 0
}
