#ifndef ARCHITECTUREHW5_PINSHARPCHECKER_H
#define ARCHITECTUREHW5_PINSHARPCHECKER_H


#include <mutex>
#include <vector>
#include <atomic>
#include "pin.h"

// Sharp checker class.
class pinSharpChecker {
public:
    // Constructor.
    explicit pinSharpChecker(std::atomic<int> *pins_left, std::vector<pin *> *ans);

    // Thread run.
    void run();

    // Getting a new pin.
    void receivePin(pin *pn);

    // Fully approving a pin and putting it in resulting vector.
    void returnPin();

private:
    // Pins which sharpness is currently being checked.
    std::vector<pin *> pins_;
    // Thread lock.
    std::mutex lock_;
    // Number of total pins, which are still in process of approving / sharpening.
    std::atomic<int> *pins_left_;
    // The resulting vector of pins.
    std::vector<pin *> *ans_;
};


#endif
