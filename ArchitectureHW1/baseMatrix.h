#ifndef __baseMatrix__
#define __baseMatrix__


#include "matrix.h"
#include "diagonalMatrix.h"
#include "lowerTriangularMatrix.h"


// Main structure.
struct baseMatrix {
    int size;
    // Each type of matrix enumerated.
    enum key {
        MATRIX, DIAGONALMATRIX, LOWERTRIANGULARMATRIX
    };
    key k;
    union {
        matrix m;
        diagonalMatrix dm;
        lowerTriangularMatrix ltm;
    };
};


// Input from file.
baseMatrix *In(ifstream &ifdt);


// Random input.
baseMatrix *InRnd();


// Output into file.
void Out(baseMatrix &bm, ofstream &ofst);


// Average value of matrix.
double getAverage(baseMatrix &bm);


#endif
