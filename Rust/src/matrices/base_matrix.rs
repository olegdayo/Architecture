use std::fs::File;

pub trait BaseMatrix {
    fn input(&mut self, info: &mut [String], index: &mut usize);
    fn random_input(&mut self);
    fn output(&self, file: &mut File);
    fn get_average(&self) -> f64;
}
