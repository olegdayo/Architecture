#ifndef ARCHITECTUREHW2_LOWERTRIANGULARMATRIX_H
#define ARCHITECTUREHW2_LOWERTRIANGULARMATRIX_H

#include "baseMatrix.h"

// Lower-triangular matrix class.
class LowerTriangularMatrix : public BaseMatrix {
public:
    // Base constructor.
    LowerTriangularMatrix();

    // Determined size constructor.
    explicit LowerTriangularMatrix(int size);

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
    // All lower-triangular elements number.
    int elems_count = 0;
    // Lower-triangular elements.
    double elems[600000]{};
};

#endif
