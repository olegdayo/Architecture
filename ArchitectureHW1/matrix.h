#ifndef __matrix__
#define __matrix__


#include <fstream>

using namespace std;


// Usual matrix structure.
struct matrix {
    int size;
    double matr[100][100];
};


// Inputting usual matrix.
void In(matrix &m, ifstream &ifst);


// Creating random usual matrix.
void InRnd(matrix &m);


// Outputting the usual matrix.
void Out(matrix &m, ofstream &ofst);


// Average value of usual matrix.
double getAverage(matrix &m);


#endif
