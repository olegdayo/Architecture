#ifndef ARCHITECTUREHW5_PIN_H
#define ARCHITECTUREHW5_PIN_H


#include <string>

// Pin struct.
struct pin {
public:
    // Curvature: double value between 0 and 1.
    // The worst pin has curvature -> 1.
    // The best pin has curvature -> 0.
    double curvature;
    // Sharpness: double value between 0 and 1.
    // The worst pin has sharpness -> 0.
    // The best pin has sharpness -> 1.
    double sharpness;

    // Constructor.
    pin(double curve, double sharp);

    // Method for the output.
    // All the trait of pin are being outputted.
    std::string to_string() const;
};


#endif
