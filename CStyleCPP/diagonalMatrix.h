#ifndef __diagonalMatrix__
#define __diagonalMatrix__


#include <fstream>

using namespace std;


// Diagonal matrix structure.
struct diagonalMatrix {
    int size;
    double diag[100];
};


// Inputting diagonal matrix.
void In(diagonalMatrix &dm, ifstream &ifst);


// Creating random diagonal matrix.
void InRnd(diagonalMatrix &dm);


// Outputting the diagonal matrix.
void Out(diagonalMatrix &dm, ofstream &ofst);


// Average value of diagonal matrix.
double getAverage(diagonalMatrix &dm);


#endif
