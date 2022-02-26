#include <iostream>
#include "pinSharper.h"

// Constructor.
pinSharper::pinSharper(pinSharpChecker *sharp_check, std::atomic<int> *pins_left) {
    sharp_check_ = sharp_check;
    pins_left_ = pins_left;
}

// Thread run.
void pinSharper::run() {
    while (true) {
        lock_.lock();
        if (*pins_left_ < 1) {
            lock_.unlock();
            return;
        }

        // Checking if program still needs to work.
        if (*pins_left_ < 1) {
            lock_.unlock();
            return;
        }

        // If no new pins came for now.
        if ((pins_.empty()) || (pins_.back() == nullptr)) {
            lock_.unlock();
            continue;
        }

        // Checking if program still needs to work.
        if (*pins_left_ < 1) {
            lock_.unlock();
            return;
        }

        // Sharpening the pin.
        pins_.back()->sharpness = pins_.back()->sharpness * 2;
        if (pins_.back()->sharpness > 1) {
            // Maximum pin sharpness is 1.
            pins_.back()->sharpness = 1;
        }

//        std::cout << "Grinder man sharped a pin, now it has curvature " +
//                  std::to_string(pins_.back()->curvature) + " and sharpness " +
//                  std::to_string(pins_.back()->sharpness) << '\n';

        lock_.unlock();

        // Sending further.
        sendPin(sharp_check_);
    }
}

// Getting a new pin.
void pinSharper::receivePin(pin *pn) {
    lock_.lock();

    // Checking if program still needs to work.
    if (*pins_left_ < 1) {
        lock_.unlock();
        return;
    }

    // Adding a new pin to our current collection.
    pins_.push_back(pn);
    lock_.unlock();
}

// Giving away a sharpened pin.
void pinSharper::sendPin(pinSharpChecker *sharp_check) {
    lock_.lock();

    // Checking if program still needs to work.
    if (*pins_left_ < 1) {
        lock_.unlock();
        return;
    }

    // Sending the pin further.
//    std::cout << "Grinder man gave sharp checker a pin with curvature " +
//              std::to_string(pins_.back()->curvature) + " and sharpness " +
//              std::to_string(pins_.back()->sharpness) + '\n';

    sharp_check->receivePin(pins_.back());

    pins_.pop_back();
    lock_.unlock();
}
