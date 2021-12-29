use std::fs::File;

pub trait BaseMatrix {
    fn input(&mut self, file: &File);
    fn random_input(&mut self);
    fn output(&self, file: &File);
    fn get_average(&self) -> f64;
}
