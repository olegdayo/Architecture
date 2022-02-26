#include "matrix.h"
#include <random>


// Inputting usual matrix.
void In(matrix &m, ifstream &ifst) {
    ifst >> m.size;
    for (int i = 0; i < m.size; ++i) {
        for (int j = 0; j < m.size; ++j) {
            ifst >> m.matr[i][j];
        }
    }
}


// Creating random usual matrix.
void InRnd(matrix &m) {
    m.size = 0;
    while (m.size == 0) {
        m.size = rand() % 100;
    }
    for (int i = 0; i < m.size; ++i) {
        for (int j = 0; j < m.size; ++j) {
            m.matr[i][j] = (double) (rand() / (double) RAND_MAX / 1000000) * rand();
        }
    }
}


// Outputting the usual matrix.
void Out(matrix &m, ofstream &ofst) {
    ofst << "Matrix:" << endl;
    ofst << m.size << '\n';
    for (int i = 0; i < m.size; ++i) {
        for (int j = 0; j < m.size; ++j) {
            ofst << m.matr[i][j] << ' ';
        }
        ofst << '\n';
    }
}


// Average value of usual matrix.
double getAverage(matrix &m) {
    double sum = 0;
    for (int i = 0; i < m.size; ++i) {
        for (int j = 0; j < m.size; ++j) {
            sum = sum + m.matr[i][j];
        }
    }
    return sum / m.size / m.size;
}
