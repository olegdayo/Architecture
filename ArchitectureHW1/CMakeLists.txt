# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language
project(task1 LANGUAGES CXX)

set(BUILD_DIR "${CMAKE_BINARY_DIR}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/../bin")

set(BINARY_DIR "${CMAKE_BINARY_DIR}")

# Source files list
set(SOURCE_FILES
    # Headers
        matrix.h
        baseMatrix.h
    container.h

    # Sources
        matrix.cpp
        baseMatrix.cpp
    container.cpp
    main.cpp
        diagonalMatrix.cpp diagonalMatrix.h lowerTriangularMatrix.cpp lowerTriangularMatrix.h)

add_executable(task01 ${SOURCE_FILES})
