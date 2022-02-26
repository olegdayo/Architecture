#ifndef __lowerTriangularMatrix__
#define __lowerTriangularMatrix__


#include <fstream>


using namespace std;


// Lower-triangular matrix structure.
struct lowerTriangularMatrix {
    int size;
    double arr[5000];
};


// Inputting lower-triangular matrix.
void In(lowerTriangularMatrix &ltm, ifstream &ifst);


// Creating random lower-triangular matrix.
void InRnd(lowerTriangularMatrix &ltm);


// Outputting the lower-triangular matrix.
void Out(lowerTriangularMatrix &ltm, ofstream &ofst);


// Average value of lower-triangular matrix.
double getAverage(lowerTriangularMatrix &ltm);


#endif
