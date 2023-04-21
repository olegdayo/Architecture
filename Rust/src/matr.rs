use std::fs::File;

use crate::matrices::{
    base_matrix::BaseMatrix, diagonal_matrix::DiagonalMatrix,
    lower_triangular_matrix::LowerTriangularMatrix, matrix::Matrix,
};

pub enum Matr {
    Matrix(Matrix),
    DiagonalMatrix(DiagonalMatrix),
    LowerTriangularMatrix(LowerTriangularMatrix),
}

impl BaseMatrix for Matr {
    fn input(&mut self, info: &mut [String], index: &mut usize) {
        match self {
            Matr::Matrix(m) => m.input(info, index),
            Matr::DiagonalMatrix(dm) => dm.input(info, index),
            Matr::LowerTriangularMatrix(ltm) => ltm.input(info, index),
        }
    }

    fn random_input(&mut self) {
        match self {
            Matr::Matrix(m) => m.random_input(),
            Matr::DiagonalMatrix(dm) => dm.random_input(),
            Matr::LowerTriangularMatrix(ltm) => ltm.random_input(),
        }
    }

    fn output(&self, file: &mut File) -> Result<(), std::io::Error> {
        match self {
            Matr::Matrix(m) => m.output(file),
            Matr::DiagonalMatrix(dm) => dm.output(file),
            Matr::LowerTriangularMatrix(ltm) => ltm.output(file),
        }
    }

    fn get_average(&self) -> f64 {
        match self {
            Matr::Matrix(m) => m.get_average(),
            Matr::DiagonalMatrix(dm) => dm.get_average(),
            Matr::LowerTriangularMatrix(ltm) => ltm.get_average(),
        }
    }
}
