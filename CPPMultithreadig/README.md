# Homework05 for Architecture.

### Preface:
One day three workers: **Chris the Curvatory checker**, **Susie the Sharpener** and **Ralsei the Reassuring inspector of sharpness** decided that sorting through mountains of pins and even more so communicating with each other during this process is quite tiresomely. So they called their fellow Oleg to develop a console multithread application in *C++* which simulates their work and relationship with each other. And here you can observe the result:

![alt text](https://github.com/OFFLUCK/Architecture/blob/master/ArchitectureHW5/meme.png)

### Files:
- **main.cpp(3KB)**: main function which reads, writes, creates threads etc...
- **pin.cpp(355B)/.h(604B)**: pin structure.
- **pinCurveChecker.cpp(2KB)/.h(804B)**: pin curvature checker class.
- **pinSharper.cpp(2KB)/.h(823B)**: grinder man class.
- **pinSharpChecker.cpp(2KB)/.h(779B)**: sharp checker class.

### Used hardware and software:
- OS: MacOS Big Sur 11.6
- RAM: 16gb
- Architecture: x86-x64
- IDE: CLion
- Assembly: CMake

### Command line input guide:
1) Write ***./ArchitectureHW5 \<number\>*** for the custom **natural** number of pins.
2) Any other set of arguments after ***./ArchitectureHW5*** will set number = 10.

### Logs:
Every activity of any thread is provided with output logs into console, use them to see the whole pin lifecycle in a workshop.

### Table which shows elapsed time in relation to number of pins:


|  Number of pins  |  Multithread C++  |  Multithread Go   |
|------------------|-------------------|-------------------|
|1                 |0ms                |0ms                |
|10                |0ms                |0ms                |
|100               |2ms                |0ms                |
|1000              |38ms               |1ms                |
|10000             |320ms              |10ms               |
|100000            |2824ms             |64ms               |
|1000000           |29642ms            |712ms              |

### Average time:
- for 1 pin: 0ms
- for 10 pins: 0ms
- for 100 pins: 2ms
- for 1000 pins: 38ms
- for 10000 pins: 320ms
- for 100000 pins: 2824ms
- for 1000000 pins: 29642ms

### Conclusion:
As we can see, the time is almost linear, however with multithreading program works a little bit faster, which is quite a profit for a developer.
