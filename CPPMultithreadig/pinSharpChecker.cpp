#include <iostream>
#include "pinSharpChecker.h"

// Constructor.
pinSharpChecker::pinSharpChecker(std::atomic<int> *pins_left, std::vector<pin *> *ans) {
    pins_left_ = pins_left;
    ans_ = ans;
}

// Thread run.
void pinSharpChecker::run() {
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

        if (pins_.back()->sharpness > 0.75) {
            lock_.unlock();
            // If we got a good pin, we send it to the resulting vector.
            returnPin();
        } else {
            // Otherwise, we throw it away.
//            std::cout << "Sharp checker disapproved and threw away a pin with curvature " +
//                      std::to_string(pins_.back()->curvature) + " and sharpness " +
//                      std::to_string(pins_.back()->sharpness) + '\n';
            --(*pins_left_);
            lock_.unlock();
        }

        lock_.lock();
        pins_.pop_back();
        lock_.unlock();
    }
}

// Getting a new pin.
void pinSharpChecker::receivePin(pin *pn) {
    lock_.lock();

    // Checking if program still needs to work.
    if (*pins_left_ < 1) {
        lock_.unlock();
        return;
    }

    pins_.push_back(pn);
    lock_.unlock();
}

// Fully approving a pin and putting it in the resulting vector.
void pinSharpChecker::returnPin() {
    lock_.lock();

//    std::cout << "Sharp checker approved a pin with curvature " +
//              std::to_string(pins_.back()->curvature) + " and sharpness " +
//              std::to_string(pins_.back()->sharpness) + '\n';

    --(*pins_left_);
//    std::cout << *pins_left_ << '\n';

    (*ans_).push_back(pins_.back());
    lock_.unlock();
}
