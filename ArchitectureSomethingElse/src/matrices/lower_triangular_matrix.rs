use std::fs::File;
use crate::matrices::base_matrix::BaseMatrix;

struct LowerTriangularMatrix {
    pub size: usize,
    pub elems_count: usize,
    pub elems: Vec<f64>,
}

impl BaseMatrix for LowerTriangularMatrix {
    fn input(&mut self, file: &File) {
        todo!()
    }

    fn random_input(&mut self) {
        todo!()
    }

    fn output(&self, file: &File) {
        println!("Lower-triangular matrix with size of {}:", self.size);

        for i in 0..self.size {
            for j in 0..self.size {
                if i >= j {
                    print!("{} ", self.elems[i]);
                } else {
                    print!("0 ");
                }
            }
            println!("");
        }
    }

    fn get_average(&self) -> f64 {
        let mut sum: f64 = 0_f64;
        for i in 0..self.elems_count {
            sum += self.elems[i];
        }
        return sum / self.size as f64 / self.size as f64;
    }
}
