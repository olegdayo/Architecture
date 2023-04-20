use crate::matrices::base_matrix::BaseMatrix;
use rand::rngs::ThreadRng;
use rand::Rng;
use std::fs::File;
use std::io::Write;

pub struct DiagonalMatrix {
    pub size: usize,
    pub diag: Vec<f64>,
}

impl BaseMatrix for DiagonalMatrix {
    fn input(&mut self, info: &mut [String], index: &mut usize) {
        self.size = info[*index].parse::<usize>().unwrap();
        *index += 1;
        let matr_info: Vec<String> = info[*index]
            .split(' ')
            .map(|s: &str| s.to_string())
            .collect();
        *index += 1;

        for i in 0..self.size {
            self.diag.push(matr_info[i].parse::<f64>().unwrap());
        }
    }

    fn random_input(&mut self) {
        let mut gen: ThreadRng = rand::thread_rng();
        let _rand_num: usize = gen.gen();

        self.size = gen.gen_range(1..101);
        for _i in 0..self.size {
            self.diag.push(gen.gen_range(-1000.0..1000.0));
        }
    }

    fn output(&self, file: &mut File) -> Result<(), std::io::Error> {
        file.write_all(
            format!(
                "Diagonal matrix with size of {} and average element {}:\n",
                self.size,
                self.get_average()
            )
            .as_bytes(),
        )?;

        for i in 0..self.size {
            for j in 0..self.size {
                if i == j {
                    file.write_all(format!("{} ", self.diag[i]).as_bytes())?;
                    continue;
                }
                file.write_all(b"0 ")?;
            }
            file.write_all(b"\n")?;
        }

        Ok(())
    }

    fn get_average(&self) -> f64 {
        let mut sum: f64 = 0_f64;
        for i in 0..self.size {
            sum += self.diag[i];
        }
        return sum / self.size as f64 / self.size as f64;
    }
}
