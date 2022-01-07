#include <iostream>
#include "pinCurveChecker.h"

// Constructor.
pinCurveChecker::pinCurveChecker(pinSharper *sharp, std::atomic<int> *pins_left) {
    sharp_ = sharp;
    pins_left_ = pins_left;
}

// Thread run.
void pinCurveChecker::run() {
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

        if (pins_.back()->curvature < 0.5) {
            // If we got a good pin, we send it further.
            lock_.unlock();
            // Checking if program still needs to work.
            sendPin(sharp_);
            continue;
        } else {
            // Otherwise, we throw it away.
//            std::cout << "Curve checker disapproved and threw away a pin with curvature " +
//                         std::to_string(pins_.back()->curvature) + " and sharpness " +
//                         std::to_string(pins_.back()->sharpness) + '\n';
            --(*pins_left_);
        }

        pins_.pop_back();
        lock_.unlock();
    }
}

// Getting a new pin.
void pinCurveChecker::receivePin(pin *pn) {
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

// Giving away an approved pin.
void pinCurveChecker::sendPin(pinSharper *sharp) {
    lock_.lock();

    // Checking if program still needs to work.
    if (*pins_left_ < 1) {
        lock_.unlock();
        return;
    }

    // Sending the pin further.
//    std::cout << "Curvature checker approved and gave grinder man a pin with curvature " +
//                 std::to_string(pins_.back()->curvature) + "and sharpness" +
//                 std::to_string(pins_.back()->sharpness) + '\n';

    sharp->receivePin(pins_.back());

    pins_.pop_back();
    lock_.unlock();
}
