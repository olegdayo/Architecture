package main

import (
	"ArchitectureSomeMoreMultiThreading/factory"
	"fmt"
	"math/rand"
	"time"
)

func getPins(numOfPins int, pins []*factory.Pin) {
	pins = make([]*factory.Pin, numOfPins)
	for i := 0; i < numOfPins; i++ {
		pins[i] = factory.NewPin(rand.Float64(), rand.Float64())
	}
}

func main() {
	start := time.Now()

	//numOfPins, _ := strconv.Atoi(os.Args[1])
	numOfPins := 10
	var pins []*factory.Pin
	getPins(numOfPins, pins)

	fmt.Printf("Total time elapsed: %v\n", time.Since(start))
}
