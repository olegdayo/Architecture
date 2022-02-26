#include <iostream>
#include <fstream>
#include <cstdlib>
#include <ctime>
#include <cstring>

#include "container.h"


// Error message.
void errMessage1() {
    cout << "incorrect command line!\n"
            "  Waited:\n"
            "     command -f infile outfile01 outfile02\n"
            "  Or:\n"
            "     command -n number outfile01 outfile02\n";
}


// Error message.
void errMessage2() {
    cout << "incorrect qualifier value!\n"
            "  Waited:\n"
            "     command -f infile outfile01 outfile02\n"
            "  Or:\n"
            "     command -n number outfile01 outfile02\n";
}


int main(int argc, char *argv[]) {
    time_t start;
    time_t finish;
    start = clock();
    // Wrong number of arguments.
    if (argc != 5) {
        errMessage1();
        return 1;
    }

    // Initialization.
    cout << "Start" << endl;
    container c;
    Init(c);

    // File input.
    if (!strcmp(argv[1], "-f")) {
        ifstream ifst(argv[2]);
        In(c, ifst);
        // Random input.
    } else if (!strcmp(argv[1], "-n")) {
        int size = atoi(argv[2]);
        if ((size < 1) || (size > 10000)) {
            cout << "incorrect number of figures = "
                 << size
                 << ". Set 0 < number <= 10000\n";
            return 3;
        }
        srand(static_cast<unsigned int>(time(0)));
        InRnd(c, size);

    } else {
        errMessage2();
        return 2;
    }

    // Unsorted container output.
    ofstream ofst1(argv[3]);
    ofst1 << "Filled container:\n";
    Out(c, ofst1);

    // Sorted container output.
    ofstream ofst2(argv[4]);
    Sorting(c);
    ofst2 << "Sorted container:" << "\n";
    Out(c, ofst2);

    // End.
    Clear(c);
    cout << "Stop" << endl;

    finish = clock();
    printf("Timer: %dms\n", (int)difftime(finish, start) * 1000 / CLOCKS_PER_SEC);
    return 0;
}
