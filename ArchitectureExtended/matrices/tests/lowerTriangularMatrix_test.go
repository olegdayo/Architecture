package tests

import (
	"ArchitectureExtended/matrices"
	"math"
	"testing"
)

func TestNewLowerTriangularMatrix(t *testing.T) {
	var m1 *matrices.LowerTriangularMatrix = &matrices.LowerTriangularMatrix{Size: 10}
	var m2 *matrices.LowerTriangularMatrix = matrices.NewLowerTriangularMatrix(10)
	if m1.Size != m2.Size {
		t.Errorf("Incorrect size, expected: %d, got: %d\n", m1.Size, m2.Size)
	}
}

func TestGetLowerTriangularMatrixAverage(t *testing.T) {
	var m *matrices.LowerTriangularMatrix = matrices.NewLowerTriangularMatrix(3)
	m.Elems = []float64{1, 2, 3, 4, 5, 6}
	var expected float64 = 21 / float64(m.Size) / float64(m.Size)

	if math.Abs(m.GetAverage()-expected) > 0.001 {
		t.Errorf("Incorrect average, expected: %f, got %f\n", expected, m.GetAverage())
	}
}
