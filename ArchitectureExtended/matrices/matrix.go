package matrices

import (
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
)

// Usual matrix structure.
type Matrix struct {
	// Size of usual matrix.
	Size int
	// Usual matrix itself.
	Matr [][]float64
}

// Creating an instance of a usual matrix and returning a pointer.
func NewMatrix(size int) *Matrix {
	m := new(Matrix)
	m.Size = size
	m.Matr = make([][]float64, size)
	for i := 0; i < size; i++ {
		m.Matr[i] = make([]float64, size)
	}
	return m
}

// File input.
func (m *Matrix) In(line string) {
	strs := strings.Split(line, " ")
	counter := 0

	for i := 0; i < m.Size; i++ {
		for j := 0; j < m.Size; j++ {
			m.Matr[i][j], _ = strconv.ParseFloat(strs[counter], 64)
			counter++
		}
	}
}

// Random input.
func (m *Matrix) RandomIn() {
	for i := 0; i < m.Size; i++ {
		for j := 0; j < m.Size; j++ {
			m.Matr[i][j] = float64(rand.Int31()%100) * rand.Float64()
		}
	}
}

// File output.
func (m *Matrix) Out(f *os.File) {
	f.WriteString("Size: ")
	f.WriteString(fmt.Sprintf("%d\n", m.Size))
	f.WriteString("Average: ")
	f.WriteString(fmt.Sprintf("%f\n", m.GetAverage()))
	f.WriteString("Type: Matrix\n")

	for i := 0; i < m.Size; i++ {
		for j := 0; j < m.Size; j++ {
			f.WriteString(fmt.Sprintf("%f ", m.Matr[i][j]))
		}
		f.WriteString("\n")
	}
}

// Getting average of all the elements.
func (m *Matrix) GetAverage() float64 {
	// Total sum of all the elements.
	var sum float64 = 0

	for i := 0; i < m.Size; i++ {
		for j := 0; j < m.Size; j++ {
			sum += m.Matr[i][j]
		}
	}

	return sum / float64(m.Size*m.Size)
}
