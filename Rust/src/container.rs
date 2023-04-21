use rand::rngs::ThreadRng;
use rand::Rng;
use std::fs::File;
use std::io::Write;

use crate::matr::Matr;
use crate::matrices::{
    base_matrix::BaseMatrix, diagonal_matrix::DiagonalMatrix,
    lower_triangular_matrix::LowerTriangularMatrix, matrix::Matrix,
};

pub struct Container {
    pub size: usize,
    pub matrs: Vec<Matr>,
}

impl Container {
    pub fn input(&mut self, mut info: &mut [String]) {
        let mut counter: usize = 0;
        self.size = info[0].parse::<usize>().unwrap();
        info = &mut info[1..];
        for i in 0..self.size {
            let matr_type: i32 = info[counter].parse::<i32>().unwrap();
            counter += 1;

            let matr = match matr_type {
                0 => Matr::Matrix(Matrix {
                    size: 0,
                    matr: Vec::new(),
                }),
                1 => Matr::DiagonalMatrix(DiagonalMatrix {
                    size: 0,
                    diag: Vec::new(),
                }),
                _ => Matr::LowerTriangularMatrix(LowerTriangularMatrix {
                    size: 0,
                    elems_count: 0,
                    elems: Vec::new(),
                }),
            };

            self.matrs.push(matr);
            self.matrs[i].input(info, &mut counter);
        }
    }

    pub fn random_input(&mut self) {
        for i in 0..self.size {
            let mut gen: ThreadRng = rand::thread_rng();
            let matr_type: i32 = gen.gen_range(0..3);

            let matr = match matr_type {
                0 => Matr::Matrix(Matrix {
                    size: 0,
                    matr: Vec::new(),
                }),
                1 => Matr::DiagonalMatrix(DiagonalMatrix {
                    size: 0,
                    diag: Vec::new(),
                }),
                _ => Matr::LowerTriangularMatrix(LowerTriangularMatrix {
                    size: 0,
                    elems_count: 0,
                    elems: Vec::new(),
                }),
            };

            self.matrs.push(matr);
            self.matrs[i].random_input();
        }
    }

    pub fn output(&self, mut file: &mut File) -> Result<(), std::io::Error> {
        file.write_all(format!("Number of matrices: {}\n", self.size).as_bytes())?;
        for i in 0..self.size {
            self.matrs[i].output(&mut file)?;
        }

        Ok(())
    }

    pub fn sort(&mut self) {
        for i in 0..self.size - 1 {
            let mut min_ind: usize = i;

            for j in i + 1..self.size {
                if self.matrs[j].get_average() < self.matrs[min_ind].get_average() {
                    min_ind = j;
                }
            }

            self.matrs.swap(min_ind, i);
        }
    }
}
