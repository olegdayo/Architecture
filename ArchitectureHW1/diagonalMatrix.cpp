#include "diagonalMatrix.h"


// Inputting diagonal matrix.
void In(diagonalMatrix &dm, ifstream &ifst) {
    ifst >> dm.size;
    for (int i = 0; i < dm.size; ++i) {
        ifst >> dm.diag[i];
    }
}


// Creating random diagonal matrix.
void InRnd(diagonalMatrix &dm) {
    dm.size = 0;
    while (dm.size == 0) {
        dm.size = rand() % 100;
    }
    for (int i = 0; i < dm.size; ++i) {
        dm.diag[i] = (double) (rand() / (double) RAND_MAX / 1000000) * rand();
    }
}


// Outputting the diagonal matrix.
void Out(diagonalMatrix &dm, ofstream &ofst) {
    ofst << "Diagonal matrix" << endl;
    ofst << dm.size << '\n';
    for (int i = 0; i < dm.size; ++i) {
        for (int j = 0; j < dm.size; ++j) {
            ofst << ((i == j) ? dm.diag[i] : 0) << ' ';
        }
        ofst << '\n';
    }
}


// Average value of diagonal matrix.
double getAverage(diagonalMatrix &dm) {
    double sum = 0;
    for (int i = 0; i < dm.size; ++i) {
        sum = sum + dm.diag[i];
    }
    return sum / dm.size / dm.size;
}
