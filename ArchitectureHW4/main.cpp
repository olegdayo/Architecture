#include <iostream>
#include <cstring>
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
    virtual float getAverage() = 0;

private:
    // Size.
    int size_ = 0;
};


// Base constructor.
BaseMatrix::BaseMatrix() {
    size_ = 0;
}

// Determined size constructor. Currently is not used.
BaseMatrix::BaseMatrix(int size) {
    size_ = size;
}

// Getting size. Currently is not used.
int BaseMatrix::getSize() {
    return size_;
}

// Output.
void BaseMatrix::Out(FILE *output) {
    fprintf(output, "%d\n", size_);
}

// Diagonal matrix class.
class DiagonalMatrix : public BaseMatrix {
public:
    // Base constructor.
    DiagonalMatrix();

    // Determined size constructor.
    explicit DiagonalMatrix(int size);

    // File input.
    void Read(FILE *input);

    // Random input.
    void RandomRead();

    // Output.
    void Out(FILE *output);

    // Getting average of all elements.
    float getAverage();

private:
    // Size.
    int size_ = 0;
    // Diagonal elements.
    float diag[1000];
};

// Base constructor.
DiagonalMatrix::DiagonalMatrix() {
    size_ = 0;
    for (int i = 0; i < 1000; ++i) {
        diag[i] = 0;
    }
}

// Determined size constructor.
DiagonalMatrix::DiagonalMatrix(int size) {
    size_ = size;
    for (int i = 0; i < 1000; ++i) {
        diag[i] = 0;
    }
}

// File input.
void DiagonalMatrix::Read(FILE *input) {
    for (int i = 0; i < size_; ++i) {
        fscanf(input, "%f", &diag[i]);
    }
}

// Random input.
void DiagonalMatrix::RandomRead() {
    // Random size.
    size_ = rand() % 100 + 1;

    for (int i = 0; i < size_; ++i) {
        // Every random element.
        diag[i] = (float) (rand() / (float) RAND_MAX / 1000000) * rand();
    }
}

// Output.
void DiagonalMatrix::Out(FILE *output) {
    fprintf(output, "%s: %d\n", "Size", size_);
    fprintf(output, "%s: %f\n", "Average", getAverage());
    fprintf(output, "%s:\n", "Diagonal matrix");

    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            // Only diagonal elements != 0.
            if (i == j) {
                fprintf(output, "%f ", diag[i]);
            } else {
                fprintf(output, "%s ", "0");
            }
        }
        fprintf(output, "\n");
    }
}

// Getting average of all elements.
float DiagonalMatrix::getAverage() {
    // Total sum.
    float sum = 0;

    for (int i = 0; i < size_; ++i) {
        sum = sum + diag[i];
    }

    return sum / size_ / size_;
}


// Lower-triangular matrix class.
class LowerTriangularMatrix : public BaseMatrix {
public:
    // Base constructor.
    LowerTriangularMatrix();

    // Determined size constructor.
    explicit LowerTriangularMatrix(int size);

    // File input.
    void Read(FILE *input);

    // Random input.
    void RandomRead();

    // Output.
    void Out(FILE *output);

    // Getting average of all elements.
    float getAverage();

private:
    // Size.
    int size_ = 0;
    // All lower-triangular elements number.
    int elems_count = 0;
    // Lower-triangular elements.
    float elems[600000];
};


// Base constructor.
LowerTriangularMatrix::LowerTriangularMatrix() {
    size_ = 0;
    elems_count = 0;
    for (int i = 0; i < 600000; ++i) {
        elems[i] = 0;
    }
}

// Determined size constructor.
LowerTriangularMatrix::LowerTriangularMatrix(int size) {
    size_ = size;
    elems_count = (size * (size + 1)) / 2;
    for (int i = 0; i < 600000; ++i) {
        elems[i] = 0;
    }
}

// File input.
void LowerTriangularMatrix::Read(FILE *input) {
    for (int i = 0; i < elems_count; ++i) {
        fscanf(input, "%f", &elems[i]);
    }
}

// Random input.
void LowerTriangularMatrix::RandomRead() {
    size_ = 0;
    size_ = rand() % 100 + 1;
    elems_count = (size_ * (size_ + 1)) / 2;
    for (int i = 0; i < elems_count; ++i) {
        elems[i] = (float) (rand() / (float) RAND_MAX / 1000000) * rand();
    }
}

// Output.
void LowerTriangularMatrix::Out(FILE *output) {
    fprintf(output, "%s: %d\n", "Size", size_);
    fprintf(output, "%s: %f\n", "Average", getAverage());
    fprintf(output, "%s:\n", "Lower-triangular matrix");

    int counter = 0;
    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            // Only lower-triangular elements != 0.
            if (i < j) {
                fprintf(output, "%s ", "0");
            } else {
                fprintf(output, "%f ", elems[counter]);
                ++counter;
            }
        }
        fprintf(output, "\n");
    }
}

// Getting average of all elements.
float LowerTriangularMatrix::getAverage() {
    // Total sum.
    float sum = 0;

    for (int i = 0; i < elems_count; ++i) {
        sum = sum + elems[i];
    }

    return sum / size_ / size_;
}


// Usual matrix class.
class Matrix : public BaseMatrix {
public:
    // Base constructor.
    Matrix();

    // Determined size constructor.
    explicit Matrix(int size);

    // File input.
    void Read(FILE *input) ;

    // Random input.
    void RandomRead() ;

    // Output.
    void Out(FILE *output) ;

    // Getting average of all elements.
    float getAverage() ;

private:
    // Size.
    int size_ = 0;
    // Matrix elements.
    float matr[1000][1000];
};

// Base constructor.
Matrix::Matrix() {
    size_ = 0;
    for (int i = 0; i < 1000; ++i) {
        for (int j = 0; j < 1000; ++j) {
            matr[i][j] = 0;
        }
    }
}

// Determined size constructor.
Matrix::Matrix(int size) {
    size_ = size;
    for (int i = 0; i < 1000; ++i) {
        for (int j = 0; j < 1000; ++j) {
            matr[i][j] = 0;
        }
    }
}

// File input.
void Matrix::Read(FILE *output) {
    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            fscanf(output, "%f", &matr[i][j]);
        }
    }
}

// Random input.
void Matrix::RandomRead() {
    // Random size.
    size_ = rand() % 100 + 1;

    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            // Every random element.
            matr[i][j] = (float) (rand() / (float) RAND_MAX / 1000000) * rand();
        }
    }
}

// Output.
void Matrix::Out(FILE *input) {
    fprintf(input, "%s: %d\n", "Size", size_);
    fprintf(input, "%s: %f\n", "Average", getAverage());
    fprintf(input, "%s:\n", "Matrix");

    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            fprintf(input, "%f ", matr[i][j]);
        }
        fprintf(input, "\n");
    }
}

// Getting average of all elements.
float Matrix::getAverage() {
    // Total sum.
    float sum = 0;

    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            sum = sum + matr[i][j];
        }
    }

    return sum / size_ / size_;
}

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

// Base constructor.
Container::Container() {
    size_ = 0;
}

// Determined size constructor.
Container::Container(int size) {
    size_ = size;
}

// One matrix add.
void Container::Add(int index, FILE *input) {
    // Creating new matrix.
    BaseMatrix *bm;
    int type;
    fscanf(input, "%d\n", &type);
    int size;
    fscanf(input, "%d\n", &size);

    // Selecting type.
    if (type == 0) {
        bm = new Matrix(size);
    } else if (type == 1) {
        bm = new DiagonalMatrix(size);
    } else if (type == 2) {
        bm = new LowerTriangularMatrix(size);
    } else {
        return;
    }

    // Reading and adding.
    bm->Read(input);
    matrices[index] = bm;
}

// File input.
void Container::In(FILE *input) {
    for (int i = 0; i < size_; ++i) {
        Add(i, input);
    }
}

// Random input.
void Container::RandomIn(int number) {
    for (int i = 0; i < number; ++i) {
        // Random type.
        int random_type = rand() % 3;

        if (random_type == 0) {
            matrices[i] = new Matrix(0);
        } else if (random_type == 1) {
            matrices[i] = new DiagonalMatrix(0);
        } else {
            matrices[i] = new LowerTriangularMatrix(0);
        }

        // Random matrix.
        matrices[i]->RandomRead();
    }
}

// Outputting all the matrices.
void Container::Out(FILE *output) {
    fprintf(output, "Container size: %d\n", size_);
    fprintf(output, "%s\n", "----------------------------------------");

    for (int i = 0; i < size_; ++i) {
        fprintf(output, "%s\n", "\n");
        matrices[i]->Out(output);
        fprintf(output, "%s\n", "\n");
    }

    fprintf(output, "%s\n", "----------------------------------------");
}

// Sorting all the matrices.
void Container::Sort() {
    for (int i = 0; i < size_ - 1; i++) {
        // Getting current minimum index.
        int min_ind = i;
        for (int j = i + 1; j < size_; j++) {
            if (matrices[j]->getAverage() < matrices[min_ind]->getAverage())
                min_ind = j;
        }

        // Changing.
        BaseMatrix *new_matrix = matrices[min_ind];
        matrices[min_ind] = matrices[i];
        matrices[i] = new_matrix;
    }
}

// Main function, here the program starts.
int main(int argc, char **argv) {
    std::string s;
    time_t start;
    time_t finish;
    start = clock();
    // Random seed.
    srand(time(NULL));
    // Checking if it is right number of args.
    if (argc == 4) {
        // File input.
        if (strcmp(argv[1], "-f") == 0) {
            // Both files.
            FILE *input_file;
            FILE *output_file;

            input_file = fopen(argv[2], "r");
            output_file = fopen(argv[3], "w");

            // Access check.
            if ((input_file == NULL) || (output_file == NULL)) {
                s = "Files cannot be found or opened!";
                printf("%s\n", s.c_str());
                fclose(input_file);
                fclose(output_file);
                return 0;
            }

            // Checking if file is empty.
            fseek(input_file, 0, SEEK_END);
            int length = ftell(input_file);
            if (length == 0) {
                s = "The input file is empty!";
                printf("%s\n", s.c_str());
                return 0;
            }

            rewind(input_file);

            // Number of matrices.
            int num;

            fscanf(input_file, "%d", &num);


            Container *cont = new Container(num);
            printf("%s\n", "Container has been created.");

            cont->In(input_file);
            printf("%s\n", "Container has been filled.");

            cont->Out(output_file);
            cont->Sort();
            printf("%s\n", "Container has been sorted.");

            fprintf(output_file, "%s\n", "Now container is sorted!");
            cont->Out(output_file);

            fclose(input_file);
            fclose(output_file);

            finish = clock();
            printf("Timer: %dms\n", (int) difftime(finish, start) * 1000 / CLOCKS_PER_SEC);
            //Random input.
        } else if (strcmp(argv[1], "-n") == 0) {
            FILE *output_file;

            // Random number of matrices.
            int random_number = rand() % std::atoi(argv[2]) + 1;

            output_file = fopen(argv[3], "w");

            // Access check.
            if (output_file == NULL) {
                s = "Files cannot be found or opened!";
                printf("%s\n", s.c_str());
                fclose(output_file);
                return 0;
            }

            Container *cont = new Container(random_number);
            printf("%s\n", "Container has been created.");

            cont->RandomIn(random_number);
            printf("%s\n", "Container has been randomly filled.");

            cont->Out(output_file);
            cont->Sort();
            printf("%s\n", "Container has been sorted.");

            fprintf(output_file, "%s\n", "Now container is sorted!");
            cont->Out(output_file);

            fclose(output_file);

            finish = clock();
            printf("Timer: %dms\n", (int) difftime(finish, start) * 1000 / CLOCKS_PER_SEC);
        } else {
            printf("Unknown argument: %s\n", argv[1]);
        }
    } else {
        printf("%s\n", "Wrong number of arguments!");
        printf("Needed: %d\n", 4);
        printf("Got: %d\n", argc);
    }
    return 0;
}
