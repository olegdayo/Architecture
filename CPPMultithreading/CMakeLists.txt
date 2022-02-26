cmake_minimum_required(VERSION 3.21)
project(ArchitectureHW5)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_CXX_FLAGS -pthread)

add_executable(ArchitectureHW5 main.cpp pinCurveChecker.cpp pinCurveChecker.h pinSharper.cpp pinSharper.h pinSharpChecker.cpp pinSharpChecker.h pin.cpp pin.h)
