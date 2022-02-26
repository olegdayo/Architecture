#include "pin.h"

// Constructor.
pin::pin(double curve, double sharp) {
    curvature = curve;
    sharpness = sharp;
}

// Method for the output.
// All the trait of pin are being outputted.
std::string pin::to_string() const {
    return "Pin with curvature: " + std::to_string(curvature) +
           " and sharpness: " + std::to_string(sharpness);
}
