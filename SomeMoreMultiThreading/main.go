package main

import (
	"fmt"
	"os"
	"strconv"
	"time"
)

func main() {
	start := time.Now()

	num_of_pins, _ := strconv.Atoi(os.Args[1])
	for i := 0; i < num_of_pins; i++ {
	}
	
	fmt.Printf("Total time elapsed: %v\n", time.Since(start))
}
