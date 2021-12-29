# Homework01 for Architecture.

![alt text](https://pbs.twimg.com/media/EFQYKdCW4AABlkl?format=jpg&name=small)

### Files:
- **main.cpp(2KB)**: main function which reads, writes, etc...
- **container.cpp(1KB)/.h(629B)**: container with all the functions.
- **baseMatrix.cpp(2KB)/.h(689B)**: basic matrix structure with all the functions.
- **matrix.cpp(1KB)/.h(472B)**: usual matrix structure with all the functions.
- **diagonalMatrix.cpp(1KB)/.h(509B)**: diagonal matrix structure with all the functions.
- **lowerTriangularMatrix.cpp(1KB)/.h(603KB)**: lower-triangular matrix structure with all the functions.

### Command line input guide:

1) Write ***./task01 -f [inputFileName].txt [outputFileName].txt [sortedOutputFileName].txt*** for file input.
2) Write ***./task01 -n [number] [outputFileName].txt [sortedOutputFileName].txt*** for random input.

### File input guide:

You need to input a couple of matrices according to this template:
1) Input type: 1 for usual matrix, 2 for diagonal matrix, 3 for lower-triangular matrix.
2) Input size: ***N*** for ***NxN*** matrix.
3) Input ***N<sup>2</sup>*** real numbers for usual matrix, ***N*** real numbers for diagonal matrix and ***N * (N + 1) / 2*** real numbers for lower-triangular matrix.


### Comparing to [NULL]:

|Number of matrices|  No OOP C++  |   OOP C++   |      Python      |    Go    |  Assembler  |
|------------------|--------------|-------------|------------------|----------|-------------|
|1                 |0ms           |2ms          |3ms, 7.32MB       |20ms      |8ms          |
|10                |2ms           |17ms         |42ms, 8.84MB      |238ms     |12ms         |
|100               |62ms          |246ms        |1746ms, 26.82MB   |2029ms    |240ms        |
|1000              |4056ms        |3338ms       |131180ms, 165.44MB|23479ms   |2811ms       |

### Tests:

For your conviniece I created a set of 11 tests via python *FillingScript.py* with input00.txt as an empty file.
