#ifndef ARCHITECTUREHW2_DIAGONALMATRIX_H
#define ARCHITECTUREHW2_DIAGONALMATRIX_H

#include "baseMatrix.h"

// Diagonal matrix class.
class DiagonalMatrix : public BaseMatrix {
public:
    // Base constructor.
    DiagonalMatrix();

    // Determined size constructor.
    explicit DiagonalMatrix(int size);

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
    // Diagonal elements.
    double diag[1000]{};
};

#endif
