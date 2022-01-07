package main

import (
	"ArchitectureSomeMoreMultiThreading/factory"
	"fmt"
	"go.uber.org/atomic"
	"math/rand"
	"os"
	"runtime"
	"strconv"
	"sync"
	"time"
)

// Fills an array with randomly generated pins.
func getPins(numOfPins uint32, pins []*factory.Pin) {
	// Filling.
	for i := 0; i < int(numOfPins); i++ {
		pins[i] = factory.NewPin(rand.Float64(), rand.Float64())
		//fmt.Printf("%d). %s\n", i, pins[i].ToString())
	}
}

// Here the program starts.
func main() {
	// Maximum cores of processor used.
	runtime.GOMAXPROCS(8)
	// Timer.
	start := time.Now()

	// For the true random.
	rand.Seed(start.UnixNano())

	// Setting a number of pins given in arguments.
	numArg, _ := strconv.Atoi(os.Args[1])
	var numOfPins uint32 = uint32(numArg)

	// All the pins.
	pins := make([]*factory.Pin, numOfPins)
	//fmt.Println("Pins, which were delivered to fabric:")
	getPins(numOfPins, pins)
	pinsLeft := atomic.Uint32{}
	pinsLeft.Add(numOfPins)

	// Creating three workers.
	checker := factory.NewCheck(&pinsLeft)
	sharp := factory.NewSharp(checker, &pinsLeft)
	curve := factory.NewCurve(sharp, &pinsLeft)

	// Giving the first worker one pin at a time.
	for i := 0; i < int(numOfPins); i++ {
		curve.ReceivePin(pins[i])
	}

	var wg sync.WaitGroup = sync.WaitGroup{}
	wg.Add(3)
	// All the workers are starting their deals.
	go curve.Run(&wg)
	go sharp.Run(&wg)
	go checker.Run(&wg)
	// Waiting until all workers end doing their deals.
	wg.Wait()

	// Outputting all the qualitative and sharp pins.
	//checker.Output()

	// Outputting resulting time.
	fmt.Printf("Total time elapsed: %v\n", time.Since(start))
}
