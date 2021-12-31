use std::fs::File;
use std::io::Write;
use rand::Rng;
use rand::rngs::ThreadRng;
use crate::matrices::base_matrix::BaseMatrix;

pub struct LowerTriangularMatrix {
    pub size: usize,
    pub elems_count: usize,
    pub elems: Vec<f64>,
}

impl BaseMatrix for LowerTriangularMatrix {
    fn input(&mut self, mut file: &mut File) {
        todo!()
    }

    fn random_input(&mut self) {
        let mut gen: ThreadRng = rand::thread_rng();
        let rand_num: usize = gen.gen();

        self.size = gen.gen_range(1..101);
        self.elems_count = self.size * (self.size + 1) / 2;
        for i in 0..self.elems_count {
            self.elems.push(gen.gen_range(-1000.0..1000.0));
        }
    }

    fn output(&self, mut file: &mut File) {
        file.write_all(format!("Lower-triangular matrix with size of {}:", self.size).as_bytes());

        for i in 0..self.size {
            for j in 0..self.size {
                if i >= j {
                    file.write_all(self.elems[i].to_string().as_bytes());
                } else {
                    file.write_all("0 ".as_bytes());
                }
            }
            file.write_all("\n".as_bytes());
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
