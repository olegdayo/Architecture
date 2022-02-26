#ifndef ARCHITECTUREHW2_MATRIX_H
#define ARCHITECTUREHW2_MATRIX_H

#include "baseMatrix.h"

// Usual matrix class.
class Matrix : public BaseMatrix {
public:
    // Base constructor.
    Matrix();

    // Determined size constructor.
    explicit Matrix(int size);

    // File input.
    void Read(FILE *input) override;

    // Random input.
    void RandomRead() override;

    // Output.
    void Out(FILE *output) override;

    // Getting average of all elements.
    double getAverage() override;

private:
    // Size.
    int size_ = 0;
    // Matrix elements.
    double matr[1000][1000]{};
};

#endif
