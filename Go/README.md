# Some GoLang features I decided to try.

![alt text](https://github.com/OFFLUCK/Architecture/blob/master/ArchitectureExtended/meme.png)

### Files:
- **go.mod(37B)**: description of go module.
- **main.go(3KB)**: main function which reads, writes, etc...
- **cont.go(4KB)**: container with all the functions.
- **baseMatrix.go(250B)**: basic matrix structure with all the functions.
- **matrix.go(2KB)**: usual matrix structure with all the functions.
- **diagonalMatrix.go(2KB)**: diagonal matrix structure with all the functions.
- **lowerTriangularMatrix.go(2KB)**: lower-triangular matrix structure with all the functions.
- **FillingScript.py(1KB)**: script which fills tests directory with random tests.

### Used hardware and software:
- OS: MacOS Big Sur 11.6
- RAM: 16gb
- Architecture: x86-x64
- IDE: GoLand

### Command line input guide:
#### TO compile and run the .go files:
Use commands ***go run \*.go {args}*** or ***go run . {args}*** for all the files to execute. The error will appear if you try to run only main.go!
1) Write ***go run \*.go -f [inputFileName].txt [outputFileName].txt*** for the file input.
2) Write ***go run \*.go -n [number] [outputFileName].txt*** for the random input.
#### To run the .exe file:
1) Write ***./ArchitectureExtended -f [inputFileName].txt [outputFileName].txt*** for the file input.
2) Write ***./ArchitectureExtended -n [number] [outputFileName].txt*** for the random input.

### File input guide:
You need to input a couple of matrices according to this template:

1) Input type: ***0*** for usual matrix, ***1*** for diagonal matrix, ***2*** for lower-triangular matrix.
2) Input size: ***N*** for ***NxN*** matrix.
3) Input ***N<sup>2</sup>*** real numbers for usual matrix, ***N*** real numbers for diagonal matrix and ***N * (N + 1) / 2*** real numbers for lower-triangular matrix.

### Tests:
For your conviniece I created a set of 12 tests via python *FillingScript.py* with input00.txt as an empty file.

### Average time:
- for 1 matrix: 20ms
- for 10 matrices: 238ms
- for 100 matrices: 2029ms
- for 1000 matrices: 23479ms

### Comparing to dynamic and object-oriented programming:
Golang has quite a few new ideas like if err != nil instead of try catch blocks and concurrency, so it must be faster than python. However the compilation process of Go is rather complicated: it has 4 phases and even has its own "assembly language". This is the main reason of its slow compilation, comparing with C++ compiler and simple Python interpreter on simple tests.

|Number of matrices|  No OOP C++  |   OOP C++   |      Python      |    Go    |    Rust    |  Assembler  |
|------------------|--------------|-------------|------------------|----------|------------|-------------|
|1                 |0ms           |2ms          |3ms, 7.32MB       |20ms      |62ms        |8ms          |
|10                |2ms           |17ms         |42ms, 8.84MB      |238ms     |426ms       |12ms         |
|100               |62ms          |246ms        |1746ms, 26.82MB   |2029ms    |6644ms      |240ms        |
|1000              |4056ms        |3338ms       |131180ms, 165.44MB|23479ms   |144222ms    |2811ms       |

Concurrency is ***not*** parallelism, So we didn't get much more efficient program.

### Conclusion:
The time now doesn't feel like linear, probaly because of concurrency, complicated compilation and large buffer reader, it is somewhat like *O(L * M * N)*, *L* - number of matrices, *M* and *N* - their sizes. Even though Concurrency is ***not*** parallelism, it still is a solid foundation for usage of parallel computings.
