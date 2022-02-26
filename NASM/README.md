# NASM aka I really don't wanna do it.

![alt text](https://github.com/OFFLUCK/Architecture/blob/master/NASM/meme.png)

### Files:
- **main.cpp(13KB)**: the full HW02 program in one file with more C-style.
- **main.nasm(13KB)**: the same program translated to NASM.
- **objconv(728KB)**: an executable file which translates .cpp to .nasm.
- **sample.sh(1KB)**: a shell script which helps to make built .nasm file more readable. Source GCC script for Arch Linux by [Bogdan](https://github.com/brem-hub). G++ script for MacOS by me.
- **FillingScript.py(1KB)**: script which fills tests directory with random tests.

### Used hardware and software:
- OS: MacOS Big Sur 11.6, Arch Linux (for build)
- RAM: 16gb
- Architecture: x86-x64
- IDE: VSCode + plugins

### Process of NASM creating:
- Build executable *objconv* from .cpp files via shell script (didn't include because there are too many of them)
- Merge whole HW02 into united main.cpp file
- Implement more C-style for better convertion
- Build a .nasm and executable files via running command **sh sample.sh main.cpp**
- Now you can run execuable file as follows in the next paragraph

### Command line input guide:
1) Write ***./program -f [inputFileName].txt [outputFileName].txt*** for the file input.
2) Write ***./program -n [number] [outputFileName].txt*** for the random input.

### File input guide:
You need to input a couple of matrices according to this template:

1) Input type: ***0*** for usual matrix, ***1*** for diagonal matrix, ***2*** for lower-triangular matrix.
2) Input size: ***N*** for ***NxN*** matrix.
3) Input ***N<sup>2</sup>*** real numbers for usual matrix, ***N*** real numbers for diagonal matrix and ***N * (N + 1) / 2*** real numbers for lower-triangular matrix.

### Tests:
For your conviniece I created a set of 12 tests via python *FillingScript.py* with input00.txt as an empty file.

### Average time:
- for 1 matrix: 8ms
- for 10 matrices: 12ms
- for 100 matrices: 240ms
- for 1000 matrices: 2811ms

### Comparing to procedure, concurrency and object-oriented programming:
I actually was waiting exactly for such results. The program is slightly faster than its OOP parent. It happend such because gcc creates many shortcuts while building the project and converting it into assembler code.

|Number of matrices|  No OOP C++  |   OOP C++   |      Python      |    Go    |    Rust    |  Assembler  |
|------------------|--------------|-------------|------------------|----------|------------|-------------|
|1                 |0ms           |2ms          |3ms, 7.32MB       |20ms      |62ms        |8ms          |
|10                |2ms           |17ms         |42ms, 8.84MB      |238ms     |426ms       |12ms         |
|100               |62ms          |246ms        |1746ms, 26.82MB   |2029ms    |6644ms      |240ms        |
|1000              |4056ms        |3338ms       |131180ms, 165.44MB|23479ms   |144222ms    |2811ms       |

The other cause of speed increase is that language doesn't need to be translated into .asm or .s file before building executable program. Skipping all these little but time-consuming steps gives a noticeable spped gain.

### Conclusion:
There definitely is some speed increase, comparing to all other languages, so Assembler truly is gonna be the fastest one (if we use single thread program, of course). However, development on this language doesn't have that many abstractions we are used to in higher-level languages. This reason plus very odd syntax turns coding into true torture.
