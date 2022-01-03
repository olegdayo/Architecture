package main

import (
	"ArchitectureSomeMoreMultiThreading/factory"
	"fmt"
	"go.uber.org/atomic"
	"math/rand"
	"time"
)

func getPins(numOfPins uint32, pins []*factory.Pin) {
	for i := 0; i < int(numOfPins); i++ {
		pins[i] = factory.NewPin(rand.Float64(), rand.Float64())
		fmt.Printf("%d). %s\n", i, pins[i].ToString())
	}
}

func main() {
	start := time.Now()

	//numArg, _ := strconv.Atoi(os.Args[1])
	//var numOfPins uint32 = uint32(numArg)
	var numOfPins uint32 = 10
	pins := make([]*factory.Pin, numOfPins)
	fmt.Println("Pins, which were delivered to fabric:")
	getPins(numOfPins, pins)
	pinsLeft := atomic.Uint32{}
	pinsLeft.Add(numOfPins)
	ans := make([]*factory.Pin, 0)

	checker := factory.NewCheck(pinsLeft, ans)
	sharp := factory.NewSharp(checker, pinsLeft)
	curve := factory.NewCurve(sharp, pinsLeft)

	for i := 0; i < int(numOfPins); i++ {
		curve.ReceivePin(pins[i])
	}

	for pinsLeft.Load() > 0 {
		go curve.Run()
		go sharp.Run()
		go checker.Run()
	}

	for i := 0; i < int(numOfPins); i++ {
		pins[i] = factory.NewPin(rand.Float64(), rand.Float64())
		fmt.Printf("%d). %s", i, pins[i].ToString())
	}

	fmt.Println("\n\nPins, which were successfully sharpened:")

	for i := 0; i < len(ans); i++ {
		fmt.Printf("%d). %s\n", i, pins[i].ToString())
	}

	fmt.Printf("Total time elapsed: %v\n", time.Since(start))
}
