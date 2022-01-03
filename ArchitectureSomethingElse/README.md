# Some RustLang stuff I decided to check out.

![alt text](https://github.com/OFFLUCK/Architecture/blob/master/ArchitectureSomethingElse/meme.png)

### Files:
- **Cargo.lock(2KB)** and **Cargo.toml(209B)** - dependencies, language version and other useful information.
- **mod.rs(95B)**: description of Rust module.
- **mod.rs(95B)**: description of Rust module.
- **main.rs(2KB)**: main function which reads, writes, etc...
- **container.rs(3KB)**: container with all the functions.
- **base_matrix.rs(215B)**: basic matrix structure with all the functions.
- **matrix.rs(2KB)**: usual matrix structure with all the functions.
- **diagonal_matrix.rs(2KB)**: diagonal matrix structure with all the functions.
- **lower_triangular_matrix.rs(2KB)**: lower-triangular matrix structure with all the functions.
- **FillingScript.py(1KB)**: script which fills tests directory with random tests.

### Used hardware and software:
- OS: MacOS Big Sur 11.6
- RAM: 16gb
- Architecture: x86-x64
- IDE: CLion with usage of Rust plugin

### Command line input guide:
1) Write ***./ArchitectureSomethingElse -f [inputFileName].txt [outputFileName].txt*** for the file input.
2) Write ***./ArchitectureSomethingElse -r [number] [outputFileName].txt*** for the random input.

### File input guide:
You need to input a couple of matrices according to this template:

1) Input type: ***0*** for usual matrix, ***1*** for diagonal matrix, ***2*** for lower-triangular matrix.
2) Input size: ***N*** for ***NxN*** matrix.
3) Input ***N<sup>2</sup>*** real numbers for usual matrix, ***N*** real numbers for diagonal matrix and ***N * (N + 1) / 2*** real numbers for lower-triangular matrix.

### Tests:
For your conviniece I created a set of 12 tests via python *FillingScript.py* with input00.txt as an empty file.

### Average time:
- for 1 matrix: 62ms
- for 10 matrices: 426ms
- for 100 matrices: 6644ms
- for 1000 matrices: 144222ms

### Comparing to dynamic and object-oriented programming:
Rust is quite a young and promissing languages especially with its really interesting ideas of ownership and borrowing, so it must be faster than python. However the results are quite shicking because I was sure that this language has speed almost like *C++*. Now I will be trying to understand the problems with my code (probably it is because of boxing/unboxing).

|Number of matrices|  No OOP C++  |   OOP C++   |      Python      |    Go    |    Rust    |  Assembler  |
|------------------|--------------|-------------|------------------|----------|------------|-------------|
|1                 |0ms           |2ms          |3ms, 7.32MB       |20ms      |62ms        |8ms          |
|10                |2ms           |17ms         |42ms, 8.84MB      |238ms     |426ms       |12ms         |
|100               |62ms          |246ms        |1746ms, 26.82MB   |2029ms    |6644ms      |240ms        |
|1000              |4056ms        |3338ms       |131180ms, 165.44MB|23479ms   |144222ms    |2811ms       |


### Conclusion:
The time feels like *O(L * M * N)*, *L* - number of matrices, *M* and *N* - their sizes. Still need to understand why Rust is slowest language of all for now
