package main

import (
	"ArchitectureSomeMoreMultiThreading/factory"
	"fmt"
	"os"
	"strconv"
	"time"
)

func getPins(numOfPins int, pins []*factory.Pin) {
	for i := 0; i < numOfPins; i++ {
	}
}

func main() {
	start := time.Now()

	numOfPins, _ := strconv.Atoi(os.Args[1])
	for i := 0; i < numOfPins; i++ {
	}

	fmt.Printf("Total time elapsed: %v\n", time.Since(start))
}
