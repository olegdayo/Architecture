package matrices

import (
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
)

// Diagonal matrix structure.
type DiagonalMatrix struct {
	// Size of diagonal matrix.
	Size int
	// Diagonal matrix itself.
	Diag []float64
}

// Creating an instance of a diagonal matrix and returning a pointer.
func NewDiagonalMatrix(size int) *DiagonalMatrix {
	dm := new(DiagonalMatrix)
	dm.Size = size
	dm.Diag = make([]float64, size)
	return dm
}

// File input.
func (dm *DiagonalMatrix) In(line string) {
	strs := strings.Split(line, " ")
	for i := 0; i < dm.Size; i++ {
		dm.Diag[i], _ = strconv.ParseFloat(strs[i], 64)
	}
}

// Random input.
func (dm *DiagonalMatrix) RandomIn() {
	for i := 0; i < dm.Size; i++ {
		dm.Diag[i] = float64(rand.Int31()%100) * rand.Float64()
	}
}

// File output.
func (dm *DiagonalMatrix) Out(f *os.File) {
	f.WriteString("Size: ")
	f.WriteString(fmt.Sprintf("%d\n", dm.Size))
	f.WriteString("Average: ")
	f.WriteString(fmt.Sprintf("%f\n", dm.GetAverage()))
	f.WriteString("Type: Diagonal Matrix\n")

	for i := 0; i < dm.Size; i++ {
		for j := 0; j < dm.Size; j++ {
			// Only diagonal elements can be non-zero.
			if i == j {
				f.WriteString(fmt.Sprintf("%f ", dm.Diag[i]))
			} else {
				f.WriteString("0 ")
			}
		}
		f.WriteString("\n")
	}
}

// Getting average of all the elements.
func (dm *DiagonalMatrix) GetAverage() float64 {
	// Total sum of all the elements.
	var sum float64 = 0

	for i := 0; i < dm.Size; i++ {
		sum += dm.Diag[i]
	}

	return sum / float64(dm.Size*dm.Size)
}
