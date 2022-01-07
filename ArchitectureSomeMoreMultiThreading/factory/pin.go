package factory

import "fmt"

// Pin struct.
type Pin struct {
	// Curvature: double value between 0 and 1.
	// The worst pin has curvature -> 1.
	// The best pin has curvature -> 0.
	curvature float64
	// Sharpness: double value between 0 and 1.
	// The worst pin has sharpness -> 0.
	// The best pin has sharpness -> 1.
	sharpness float64
}

// Constructor.
func NewPin(curvature float64, sharpness float64) *Pin {
	pin := new(Pin)
	pin.curvature = curvature
	pin.sharpness = sharpness
	return pin
}

// Method for the output.
// All the trait of pin are being outputted.
func (pin *Pin) ToString() string {
	return fmt.Sprintf("Pin with curvature: %f and sharpness: %f", pin.curvature, pin.sharpness)
}
