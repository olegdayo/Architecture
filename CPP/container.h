#ifndef ARCHITECTUREHW2_CONTAINER_H
#define ARCHITECTUREHW2_CONTAINER_H

#include <cstdio>
#include "baseMatrix.h"

// Container class.
class Container {
public:
    // Base constructor.
    Container();

    // Determined size constructor.
    explicit Container(int size);

    // One matrix add.
    void Add(int index, FILE *input);

    // File input.
    void In(FILE *input);

    // Random input.
    void RandomIn(int number);

    // Outputting all the matrices.
    void Out(FILE *output);

    // Sorting all the matrices.
    void Sort();

private:
    // Size.
    int size_;
    // All matrices;
    BaseMatrix *matrices[1000];
};

#endif
