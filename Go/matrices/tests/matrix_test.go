package tests

import (
	"ArchitectureExtended/matrices"
	"math"
	"testing"
)

func TestNewMatrix(t *testing.T) {
	var m1 *matrices.Matrix = &matrices.Matrix{Size: 10}
	var m2 *matrices.Matrix = matrices.NewMatrix(10)
	if m1.Size != m2.Size {
		t.Errorf("Incorrect size, expected: %d, got: %d\n", m1.Size, m2.Size)
	}
}

func TestGetMatrixAverage(t *testing.T) {
	var m *matrices.Matrix = matrices.NewMatrix(3)
	m.Matr = [][]float64{
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9},
	}
	var expected float64 = 45.0 / float64(m.Size) / float64(m.Size)

	if math.Abs(m.GetAverage()-expected) > 0.001 {
		t.Errorf("Incorrect average, expected: %f, got %f\n", expected, m.GetAverage())
	}
}
