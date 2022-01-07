package main

import (
	"ArchitectureSomeMoreMultiThreading/factory"
	"fmt"
	"go.uber.org/atomic"
	"math/rand"
	"sync"
	"time"
)

func getPins(numOfPins uint32, pins []*factory.Pin) {
	for i := 0; i < int(numOfPins); i++ {
		pins[i] = factory.NewPin(rand.Float64(), rand.Float64())
		//fmt.Printf("%d). %s\n", i, pins[i].ToString())
	}
}

func main() {
	start := time.Now()
	rand.Seed(start.UnixNano())

	//numArg, _ := strconv.Atoi(os.Args[1])
	//var numOfPins uint32 = uint32(numArg)
	const numOfPins uint32 = 1000000
	pins := make([]*factory.Pin, numOfPins)
	//fmt.Println("Pins, which were delivered to fabric:")
	getPins(numOfPins, pins)
	pinsLeft := atomic.Uint32{}
	pinsLeft.Add(numOfPins)

	checker := factory.NewCheck(&pinsLeft)
	sharp := factory.NewSharp(checker, &pinsLeft)
	curve := factory.NewCurve(sharp, &pinsLeft)

	for i := 0; i < int(numOfPins); i++ {
		curve.ReceivePin(pins[i])
	}

	var wg sync.WaitGroup = sync.WaitGroup{}
	wg.Add(3)
	go curve.Run(&wg)
	go sharp.Run(&wg)
	go checker.Run(&wg)
	wg.Wait()

	//checker.Output()

	fmt.Printf("Total time elapsed: %v\n", time.Since(start))
}
