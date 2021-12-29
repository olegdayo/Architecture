pub mod container {
    use std::fs::File;
    use crate::matrices::base_matrix::BaseMatrix;
    use crate::matrices::matrix;
    use crate::matrices::diagonal_matrix;
    use crate::matrices::lower_triangular_matrix;
    use crate::matrices::matrix::Matrix;

    pub struct Container {
        pub size: usize,
        pub matrs: Vec<Box<dyn BaseMatrix>>,
    }

    pub trait ContainerInterface {
        fn input(&mut self, file: &File);
        fn random_in(&mut self);
        fn output(&self, file: &File);
        fn sort(&mut self);
    }

    impl ContainerInterface for Container {
        fn input(&mut self, file: &File) {
            todo!()
        }

        fn random_in(&mut self) {
            for i in 0..self.size {
                todo!()
            }
        }

        fn output(&self, file: &File) {
            println!("Number of matrices: {}", self.size);
            for i in 0..self.size {
                self.matrs[i].output(&file);
            }
        }

        fn sort(&mut self) {
            for i in 0..self.size - 1 {
                let mut min_ind: usize = i;

                for j in i + 1..self.size {
                    if self.matrs[j].get_average() <
                        self.matrs[min_ind].get_average() {
                        min_ind = j;
                    }
                }

                self.matrs.swap(min_ind, i);
            }
        }
    }
}