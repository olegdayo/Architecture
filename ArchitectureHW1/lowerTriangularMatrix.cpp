#include "lowerTriangularMatrix.h"


// Inputting lower-triangular matrix.
void In(lowerTriangularMatrix &ltm, ifstream &ifst) {
    ifst >> ltm.size;
    for (int i = 0; i < (ltm.size + 1) * ltm.size / 2; ++i) {
        ifst >> ltm.arr[i];
    }
}


// Creating random lower-triangular matrix.
void InRnd(lowerTriangularMatrix &ltm) {
    ltm.size = 0;
    while (ltm.size == 0) {
        ltm.size = rand() % 100;
    }
    for (int i = 0; i < (ltm.size + 1) * ltm.size / 2; ++i) {
        ltm.arr[i] = (double) (rand() / (double) RAND_MAX / 1000000) * rand();
    }
}


// Outputting the lower-triangular matrix.
void Out(lowerTriangularMatrix &ltm, ofstream &ofst) {
    ofst << "Lower-triangular matrix" << endl;
    ofst << ltm.size << '\n';
    int counter = 0;
    for (int i = 0; i < ltm.size; ++i) {
        for (int j = 0; j < ltm.size; ++j) {
            if (i < j) {
                ofst << '0' << ' ';
            } else {
                ofst << ltm.arr[counter] << ' ';
                ++counter;
            }
        }
        ofst << '\n';
    }
}


// Average value of lower-triangular matrix.
double getAverage(lowerTriangularMatrix &ltm) {
    double sum = 0;
    for (int i = 0; i < (ltm.size + 1) * ltm.size / 2; ++i) {
        sum = sum + ltm.arr[i];
    }
    return sum / ltm.size / ltm.size;
}
