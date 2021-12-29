package matrices

import (
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
)

// Lower-triangular matrix structure.
type LowerTriangularMatrix struct {
	// Size.
	Size int
	// Total number of all non-zero elements.
	ElemCount int
	// Matrix itself.
	Elems []float64
}

// Creating an instance of a lower-triangular matrix and returning a pointer.
func NewLowerTriangularMatrix(size int) *LowerTriangularMatrix {
	ltm := new(LowerTriangularMatrix)
	ltm.Size = size
	ltm.ElemCount = size * (size + 1) / 2
	ltm.Elems = make([]float64, ltm.ElemCount)
	return ltm
}

// File input.
func (ltm *LowerTriangularMatrix) In(line string) {
	strs := strings.Split(line, " ")
	for i := 0; i < ltm.ElemCount; i++ {
		ltm.Elems[i], _ = strconv.ParseFloat(strs[i], 64)
	}
}

// Random input.
func (ltm *LowerTriangularMatrix) RandomIn() {
	for i := 0; i < ltm.ElemCount; i++ {
		ltm.Elems[i] = float64(rand.Int31()%100) * rand.Float64()
	}
}

// File output.
func (ltm *LowerTriangularMatrix) Out(f *os.File) {
	f.WriteString("Size: ")
	f.WriteString(fmt.Sprintf("%d\n", ltm.Size))
	f.WriteString("Average: ")
	f.WriteString(fmt.Sprintf("%f\n", ltm.GetAverage()))
	f.WriteString("Type: Lower-Triangular Matrix\n")

	for i := 0; i < ltm.Size; i++ {
		for j := 0; j < ltm.Size; j++ {
			// Only elements which are placed lower or on the diagonal can be non-zero.
			if i >= j {
				f.WriteString(fmt.Sprintf("%f ", ltm.Elems[i]))
			} else {
				f.WriteString("0 ")
			}
		}
		f.WriteString("\n")
	}
}

// Getting average of all the elements.
func (ltm *LowerTriangularMatrix) GetAverage() float64 {
	// Total sum of all the elements.
	var sum float64 = 0

	for i := 0; i < ltm.ElemCount; i++ {
		sum += ltm.Elems[i]
	}

	return sum / float64(ltm.Size*ltm.Size)
}
