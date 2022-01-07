# Homework05 for Architecture.

### Preface:
One day three workers: **Chris the Curvatory checker**, **Susie the Sharpener** and **Ralsei the Reassuring inspector of sharpness** decided that sorting through mountains of pins and even more so communicating with each other during this process is quite tiresomely. So they called their fellow Oleg to develop a console multithread application in *GoLang* which simulates their work and relationship with each other. And here you can observe the result:

![alt text](https://github.com/OFFLUCK/Architecture/blob/master/ArchitectureSomeMoreMultiThreading/meme.png)

### Files:
- **go.mod(86B)**: description of go module.
- **main.go(2KB)**: main function which reads, writes, creates threads etc...
- **pin.go(707B)**: pin structure.
- **pinCurveChecker.go(2KB)**: pin curvature checker class.
- **pinSharper.go(2KB)**: grinder man class.
- **pinSharpChecker.go(2KB)**: sharp checker class.

### Used hardware and software:
- OS: MacOS Big Sur 11.6
- RAM: 16gb
- Architecture: x86-x64
- IDE: GoLand

### Command line input guide:
Write ***./ArchitectureHW5 \<number\>*** for the custom **natural** number of pins.

### Logs:
Every activity of any thread is provided with output logs into console, use them to see the whole pin lifecycle in a workshop.

### Table which shows elapsed time in relation to number of pins:
***GoRoutines are unbelievebly cool!!!***

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
- for 100 pins: 0ms
- for 1000 pins: 1ms
- for 10000 pins: 10ms
- for 100000 pins: 64ms
- for 1000000 pins: 712ms

### Conclusion:
As we can see, the time is almost linear, however with multithreading program works really faster, which is quite a profit for a developer.
