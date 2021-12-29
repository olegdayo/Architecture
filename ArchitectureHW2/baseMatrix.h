#ifndef ARCHITECTUREHW2_BASEMATRIX_H
#define ARCHITECTUREHW2_BASEMATRIX_H

#include <cstdio>

// Base matrix class.
class BaseMatrix {
public:
    // Base constructor.
    BaseMatrix();

    // Determined size constructor. Currently is not used.
    explicit BaseMatrix(int size);

    // Getting size. Currently is not used.
    int getSize();

    // File input.
    virtual void Read(FILE *input) = 0;

    // Random input.
    virtual void RandomRead() = 0;

    // Output.
    virtual void Out(FILE *output) = 0;

    // Getting average of all elements.
    virtual double getAverage() = 0;

private:
    // Size.
    int size_ = 0;
};

#endif
