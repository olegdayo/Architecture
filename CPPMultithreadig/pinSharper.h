#ifndef ARCHITECTUREHW5_PINSHARPER_H
#define ARCHITECTUREHW5_PINSHARPER_H


#include <vector>
#include <mutex>
#include <atomic>
#include "pinSharpChecker.h"
#include "pin.h"

// Grinder man class.
class pinSharper {
public:
    // Constructor.
    explicit pinSharper(pinSharpChecker *sharp_check, std::atomic<int> *pins_left);

    // Thread run.
    void run();

    // Getting a new pin.
    void receivePin(pin *pn);

    // Giving away a sharpened pin.
    void sendPin(pinSharpChecker *sharp_check);

private:
    // Pins which are currently being sharpened.
    std::vector<pin *> pins_;
    // The sharp checker whom grinder man is going to give pins.
    pinSharpChecker *sharp_check_;
    // Thread lock.
    std::mutex lock_;
    // Number of total pins, which are still in process of approving / sharpening.
    std::atomic<int> *pins_left_;
};


#endif
