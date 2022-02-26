#include "baseMatrix.h"


// Input from file.l
baseMatrix *In(ifstream &ifst) {
    baseMatrix *bm;
    int k;
    ifst >> k;
    switch (k) {
        case 1:
            bm = new baseMatrix;
            bm->k = baseMatrix::MATRIX;
            In(bm->m, ifst);
            return bm;
        case 2:
            bm = new baseMatrix;
            bm->k = baseMatrix::DIAGONALMATRIX;
            In(bm->dm, ifst);
            return bm;
        case 3:
            bm = new baseMatrix;
            bm->k = baseMatrix::LOWERTRIANGULARMATRIX;
            In(bm->ltm, ifst);
            return bm;
        default:
            return 0;
    }
}


// Random input.
baseMatrix *InRnd() {
    baseMatrix *bm;
    int k = rand() % 2 + 1;
    switch (k) {
        case 1:
            bm = new baseMatrix;
            bm->k = baseMatrix::MATRIX;
            InRnd(bm->m);
            return bm;
        case 2:
            bm = new baseMatrix;
            bm->k = baseMatrix::DIAGONALMATRIX;
            InRnd(bm->dm);
            return bm;
        default:
            return 0;
    }
}


// Output into file.
void Out(baseMatrix &s, ofstream &ofst) {
    switch (s.k) {
        case baseMatrix::MATRIX:
            Out(s.m, ofst);
            break;
        case baseMatrix::DIAGONALMATRIX:
            Out(s.dm, ofst);
            break;
        case baseMatrix::LOWERTRIANGULARMATRIX:
            Out(s.ltm, ofst);
    }
}


// Average value of matrix.
double getAverage(baseMatrix &bm) {
    switch (bm.k) {
        case baseMatrix::MATRIX:
            return getAverage(bm.m);
            break;
        case baseMatrix::DIAGONALMATRIX:
            return getAverage(bm.dm);
            break;
        case baseMatrix::LOWERTRIANGULARMATRIX:
            return getAverage(bm.ltm);
        default:
            return 0.0;
    }
}
