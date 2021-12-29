package main

import (
	"fmt"
	"io/ioutil"
	"math/rand"
	"os"
	"runtime"
	"strconv"
	"strings"
	"time"
)

// File input.
func FileInput() {
	// Input and output files.
	inputFile, inputErr := os.Open(os.Args[2])
	outputFile, outputErr := os.Create(os.Args[3])

	// Closing the files before leaving the function.
	// Defer statements are executed the last.
	defer inputFile.Close()
	defer outputFile.Close()

	// Checking if files can be opened or created.
	if inputErr != nil || outputErr != nil {
		fmt.Println("Files could not be opened or created!")
		return
	}

	// Reading all the info from the input file to the []byte buffer.
	bytes, err := ioutil.ReadAll(inputFile)

	// Checking if file could be read.
	if err != nil {
		fmt.Println("File could nor be read!")
		return
	}

	// Getting a total line from the []byte buffer.
	line := string(bytes[:])

	// Checking if line is empty.
	if len(line) == 0 {
		fmt.Println("File is empty!")
		return
	}

	// Split the total line into separate lines.
	lines := strings.Split(line, "\n")

	// Creating an instance of container.
	numOfMatrs, _ := strconv.Atoi(lines[0])
	container := NewCont(numOfMatrs)
	fmt.Println("Container is created!")

	// Filling the container.
	container.In(lines[1:])
	fmt.Println("Container is filled!")
	// Outputting it.
	container.Out(outputFile)

	// Sorting the container.
	container.Sorting()
	fmt.Println("Container is sorted!")

	// Outputting more info.
	outputFile.WriteString("\n")
	outputFile.WriteString("\n")
	outputFile.WriteString("And now matrices are sorted:\n")
	outputFile.WriteString("\n")
	outputFile.WriteString("\n")

	// Outputting it.
	container.Out(outputFile)
}

// Random input.
func RandomInput() {
	// Output file.
	outputFile, outputErr := os.Create(os.Args[3])

	// Closing the files before leaving the function.
	// Defer statements are executed the last.
	defer outputFile.Close()

	// Checking if file can be created.
	if outputErr != nil {
		fmt.Println("File could not be created!")
		return
	}

	// Creating an instance of container.
	numOfMatrs, _ := strconv.Atoi(os.Args[2])
	container := NewCont(numOfMatrs)
	fmt.Println("Container is created!")

	// Filling the container.
	container.RandomIn()
	fmt.Println("Container is filled!")
	// Outputting it.
	container.Out(outputFile)

	// Sorting the container.
	container.Sorting()
	fmt.Println("Container is sorted!")

	// Outputting more info.
	outputFile.WriteString("\n")
	outputFile.WriteString("\n")
	outputFile.WriteString("And now matrices are sorted:\n")
	outputFile.WriteString("\n")
	outputFile.WriteString("\n")

	// Outputting it.
	container.Out(outputFile)
}

func main() {
	// Maximum cores of processor used.
	runtime.GOMAXPROCS(4)

	// Truly random generator.
	rand.Seed(time.Now().UnixNano())

	// Memory statistics.
	var m runtime.MemStats
	runtime.ReadMemStats(&m)

	// Start of the program.
	start := time.Now()

	// Checking the correct number of arguments.
	if len(os.Args) != 4 {
		fmt.Println("Wrong number of arguments!")
		return
	}

	// Checking the input option.
	if os.Args[1] == "-f" {
		FileInput()
	} else if os.Args[1] == "-n" {
		RandomInput()
	} else {
		fmt.Println("Wrong input!")
	}

	// Printing the total time elapsed.
	fmt.Printf("Total time elapsed: %v\n", time.Since(start))

	// Printing the total memory used.
	fmt.Printf("Total memory used: %fMB", float64(m.Sys)/1024/1024)
}
