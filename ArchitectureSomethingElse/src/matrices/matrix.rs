use std::fs::File;
use crate::matrices::base_matrix::BaseMatrix;

pub struct Matrix {
    pub size: usize,
    pub matr: Vec<Vec<f64>>,
}

impl BaseMatrix for Matrix {
    fn input(&mut self, file: &File) {
        todo!()
    }

    fn random_input(&mut self) {
        todo!()
    }

    fn output(&self, file: &File) {
        println!("Usual matrix with size of {}:", self.size);

        for i in 0..self.size {
            for j in 0..self.size {
                print!("{} ", self.matr[i][j]);
            }
            println!("");
        }
    }

    fn get_average(&self) -> f64 {
        let mut sum: f64 = 0_f64;
        for i in 0..self.size {
            for j in 0..self.size {
                sum += self.matr[i][j];
            }
        }
        return sum / self.size as f64 / self.size as f64;
    }
}
