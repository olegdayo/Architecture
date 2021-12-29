package main

import (
	"ArchitectureExtended/matrices"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"sync"
)

// Container structure.
type Cont struct {
	// Size.
	Size int
	// Container itself
	Container []matrices.BaseMatrix
}

// Creating an instance of a container and returning a pointer.
func NewCont(size int) *Cont {
	cont := new(Cont)
	cont.Size = size
	cont.Container = make([]matrices.BaseMatrix, size)
	return cont
}

// File input.
func (cont *Cont) In(lines []string) {
	// Goroutines waiter.
	wg := sync.WaitGroup{}
	// Giving number of goroutines which we are going to wait.
	wg.Add(cont.Size)

	for i := 0; i < cont.Size; i++ {
		// Remembering i because it will be changed on next loop iteration.
		// Which will cause problems with indexation in concurrency approach.
		j := i
		// Goroutine always works with functions, so we create the anonymous one.
		go func() {
			// The goroutine is done.
			// Defer statements are executed the last.
			defer wg.Done()

			// Creating basic data of matrix.
			matrixType, _ := strconv.Atoi(lines[j*3])
			size, _ := strconv.Atoi(lines[j*3+1])

			// Creating a matrix instance and a pointer, according to known data.
			// And adding the pointer to the container.
			if matrixType == 0 {
				m := matrices.NewMatrix(size)
				m.In(lines[j*3+2])
				cont.Container[j] = m
			} else if matrixType == 1 {
				dm := matrices.NewDiagonalMatrix(size)
				dm.In(lines[j*3+2])
				cont.Container[j] = dm
			} else {
				ltm := matrices.NewLowerTriangularMatrix(size)
				ltm.In(lines[j*3+2])
				cont.Container[j] = ltm
			}
		}()
	}

	// Waiter waits at this part of code.
	wg.Wait()
}

// Random input.
func (cont *Cont) RandomIn() {
	// Goroutines waiter.
	wg := sync.WaitGroup{}
	// Giving number of goroutines which we are going to wait.
	wg.Add(cont.Size)

	for i := 0; i < cont.Size; i++ {
		// Remembering i because it will be changed on next loop iteration.
		// Which will cause problems with indexation in concurrency approach.
		j := i
		// Goroutine always works with functions, so we create the anonymous one.
		go func() {
			// The goroutine is done.
			// Defer statements are executed the last.
			defer wg.Done()

			// Randomly creating basic data of matrix.
			var matrixType int = int(rand.Int31() % 3)
			var size int = int(rand.Int31()%100) + 1

			// Creating a matrix instance and a pointer, according to known data.
			// And adding the pointer to the container.
			if matrixType == 0 {
				m := matrices.NewMatrix(size)
				m.RandomIn()
				cont.Container[j] = m
			} else if matrixType == 1 {
				dm := matrices.NewDiagonalMatrix(size)
				dm.RandomIn()
				cont.Container[j] = dm
			} else {
				ltm := matrices.NewLowerTriangularMatrix(size)
				ltm.RandomIn()
				cont.Container[j] = ltm
			}
		}()
	}

	// Waiter waits at this part of code.

	wg.Wait()
}

// File output.
func (cont *Cont) Out(f *os.File) {
	f.WriteString("Number of matrices: ")
	f.WriteString(fmt.Sprintf("%d\n", cont.Size))
	for i := 0; i < cont.Size; i++ {
		f.WriteString("\n---------------------------------\n")
		cont.Container[i].Out(f)
		f.WriteString("\n---------------------------------\n")

	}
}

// Selection sort.
func (cont *Cont) Sorting() {
	for i := 0; i < cont.Size-1; i++ {
		// Current minimum.
		minInd := i

		for j := i + 1; j < cont.Size; j++ {
			if cont.Container[j].GetAverage() < cont.Container[minInd].GetAverage() {
				minInd = j
			}
		}

		// Swapping current minimum with left border of unsorted array.
		cont.Container[i], cont.Container[minInd] = cont.Container[minInd], cont.Container[i]
	}
}
