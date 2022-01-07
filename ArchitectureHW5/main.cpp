#include <iostream>
#include <thread>
#include <vector>
#include <random>
#include <atomic>
#include "pinCurveChecker.h"
#include "pinSharper.h"
#include "pinSharpChecker.h"
#include "pin.h"

// Fills a vector with randomly generated pins.
void randomFill(int pins_num, std::vector<pin *> *pins) {
    // Creating random generator.
    std::random_device rd;
    std::mt19937 gen(rd());

    // Filling.
    for (int i = 0; i < pins_num; ++i) {
        pins->push_back(new pin(std::generate_canonical<double, 10>(gen),
                                std::generate_canonical<double, 10>(gen)));
    }
}

// Here the program starts.
int main(int argc, char **argv) {
    // Timer.
    time_t start;
    time_t finish;
    start = clock();

    // For the true random.
    srand(time(nullptr));

    // Default value.
    int pins_left = 10;

    // Checking if number of arguments is correct.
    if (argc == 2) {
        try {
            // Trying to set a number of pins given in arguments.
            pins_left = std::atoi(argv[1]);

            // Setting default value because of incorrect arguments.
            if (pins_left < 1) {
                pins_left = 10;
            }
        } catch (...) {
//            std::cout << "Something went wrong, putting a default number of unprocessed_pins: 10" << '\n';
            // Setting default value because of incorrect arguments.
            pins_left = 10;
        }
    } else {
//        std::cout << "Wrong number of arguments, putting a default number of unprocessed_pins: 10" << '\n';
        // Setting default value cause of incorrect number of arguments.
        pins_left = 10;
    }

    // Pins before workshop.
    std::vector<pin *> unprocessed_pins;
    // Pins after workshop.
    std::vector<pin *> processed_pins;

    // Filling.
    randomFill(pins_left, &unprocessed_pins);

    // Outputting all the given pins.
//    std::cout << "Pins, which were delivered to fabric:" << '\n';
//    for (int i = 0; i < pins_left; ++i) {
//        std::cout << i + 1 << ")." << unprocessed_pins[i]->to_string() << '\n';
//    }
//    std::cout << '\n' << '\n';
    std::atomic<int> counter(pins_left);

    // Creating three workers.
    pinSharpChecker *sharp_check = new pinSharpChecker(&counter, &processed_pins);
    pinSharper *sharp = new pinSharper(sharp_check, &counter);
    pinCurveChecker *curve_check = new pinCurveChecker(sharp, &counter);

    // Now they are threads.
    std::thread curveCheckThread = std::thread(&pinCurveChecker::run, curve_check);
    std::thread sharpThread = std::thread(&pinSharper::run, sharp);
    std::thread sharpCheckThread = std::thread(&pinSharpChecker::run, sharp_check);

    // Giving the first worker one pin at a time.
    for (auto pin: unprocessed_pins) {
        curve_check->receivePin(pin);
    }

    // Waiting until all workers end doing their deals.
    curveCheckThread.join();
    sharpThread.join();
    sharpCheckThread.join();

    // Outputting all the qualitative and sharp pins.
//    std::cout << '\n' << '\n' << "Pins, which were successfully sharpened:" << '\n';
//    for (int i = 0; i < processed_pins.size(); ++i) {
//        std::cout << i + 1 << ")." << processed_pins[i]->to_string() << '\n';
//    }

    // Outputting the resulting time.
    finish = clock();
    std::cout << "Time elapsed: " << (int) difftime(finish, start) * 1000 / CLOCKS_PER_SEC << "ms" << '\n';

    return 0;
}
