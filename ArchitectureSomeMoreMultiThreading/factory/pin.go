package factory

import "fmt"

type Pin struct {
	curvature float64
	sharpness float64
}

func NewPin(curvature float64, sharpness float64) *Pin {
	pin := new(Pin)
	pin.curvature = curvature
	pin.sharpness = sharpness
	return pin
}

func (pin *Pin) ToString() string {
	return fmt.Sprintf("Pin with curvature: %f and sharpness: %f", pin.curvature, pin.sharpness)
}
