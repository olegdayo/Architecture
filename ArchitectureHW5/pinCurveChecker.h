#ifndef ARCHITECTUREHW5_PINCURVECHECKER_H
#define ARCHITECTUREHW5_PINCURVECHECKER_H


#include <vector>
#include <mutex>
#include <atomic>
#include "pinSharper.h"
#include "pin.h"

// Curvature checker class.
class pinCurveChecker {
public:
    // Constructor.
    pinCurveChecker(pinSharper *sharp, std::atomic<int> *pins_left);

    // Thread run.
    void run();

    // Getting a new pin.
    void receivePin(pin *pn);

    // Giving away an approved pin.
    void sendPin(pinSharper *sharp);

private:
    // Pins which are currently being checked.
    std::vector<pin *> pins_;
    // The grinder man whom curvature checker is going to give pins.
    pinSharper *sharp_;
    // Thread lock.
    std::mutex lock_;
    // Number of total pins, which are still in process of approving / sharpening.
    std::atomic<int> *pins_left_;
};


#endif
