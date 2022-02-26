package tests

import (
	"ArchitectureExtended/matrices"
	"math"
	"testing"
)

func TestNewDiagonalMatrix(t *testing.T) {
	var dm1 *matrices.DiagonalMatrix = &matrices.DiagonalMatrix{Size: 10}
	var dm2 *matrices.DiagonalMatrix = matrices.NewDiagonalMatrix(10)
	if dm1.Size != dm2.Size {
		t.Errorf("Incorrect size, expected: %d, got: %d\n", dm1.Size, dm2.Size)
	}
}

func TestGetDiagonalMatrixAverage(t *testing.T) {
	var dm *matrices.DiagonalMatrix = matrices.NewDiagonalMatrix(3)
	dm.Diag = []float64{1, 2, 3}
	var expected float64 = 6 / float64(dm.Size) / float64(dm.Size)

	if math.Abs(dm.GetAverage()-expected) > 0.001 {
		t.Errorf("Incorrect average, expected: %f, got %f\n", expected, dm.GetAverage())
	}
}
