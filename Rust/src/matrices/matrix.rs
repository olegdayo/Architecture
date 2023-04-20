use std::fs::File;
use std::io::Write;
use rand::Rng;
use rand::rngs::ThreadRng;
use crate::matrices::base_matrix::BaseMatrix;

pub struct Matrix {
    pub size: usize,
    pub matr: Vec<Vec<f64>>,
}

impl BaseMatrix for Matrix {
    fn input(&mut self, info: &mut [String], index: &mut usize) {
        self.size = info[*index].parse::<usize>().unwrap();
        *index += 1;
        let matr_info: Vec<String> = info[*index].split(' ').map(|s: &str| s.to_string()).collect();
        *index += 1;

        let mut counter: usize = 0;
        for i in 0..self.size {
            self.matr.push(Vec::new());
            for _j in 0..self.size {
                self.matr[i].push(matr_info[counter].parse::<f64>().unwrap());
                counter += 1;
            }
        }
    }

    fn random_input(&mut self) {
        let mut gen: ThreadRng = rand::thread_rng();
        let _rand_num: usize = gen.gen();

        self.size = gen.gen_range(1..101);
        for i in 0..self.size {
            self.matr.push(Vec::new());
            for _j in 0..self.size {
                self.matr[i].push(gen.gen_range(-1000.0..1000.0));
            }
        }
    }

    fn output(&self, file: &mut File) -> Result<(), std::io::Error> {
        file.write_all(format!("Usual matrix with size of {} and average element {}:\n", self.size, self.get_average()).as_bytes())?;

        for i in 0..self.size {
            for j in 0..self.size {
                file.write_all(format!("{} ", self.matr[i][j]).as_bytes())?;
            }
            file.write_all(b"\n")?;
        }

        Ok(())
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
