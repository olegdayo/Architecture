use std::fs::File;

pub trait BaseMatrix {
    fn input(&mut self, file: &mut File);
    fn random_input(&mut self);
    fn output(&self, file: &mut File);
    fn get_average(&self) -> f64;
}
