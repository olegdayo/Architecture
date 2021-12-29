#![allow(non_snake_case)]
#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]

mod matrices;
mod container;

use std::env;
use std::fs::File;
use std::io;
use rand::Rng;
use rand::rngs::ThreadRng;
use crate::container::container::Container;
use crate::container::container::ContainerInterface;

fn input(args: &Vec<String>, cont: &mut Container) {
    if args[1] == "-f" {
        file_input(args, cont);
    } else if args[1] == "-r" {
        random_input(args, cont);
    } else {
        println!("LMAO the arguments are wrong");
    }
}

fn file_input(args: &Vec<String>, cont: &mut Container) {
    // let mut file: File = std::fs::File::open(args[2].clone()).unwrap();
    todo!()
}

fn random_input(args: &Vec<String>, cont: &mut Container) {
    let mut range: ThreadRng = rand::thread_rng();
    let size: usize = range.gen();
    cont.size = size % 10000 + 1;
    // cont.random_in();
}

fn sort_and_output(args: &Vec<String>, cont: &mut Container) {
    let mut file: File = std::fs::File::open(args[3].clone()).unwrap();
    cont.output(&file);
}

fn main() {
    let args: Vec<String> = env::args().collect();
    let cont: &mut Container = &mut Container { size: 0, matrs: Vec::new() };
    println!("{}", cont.size);
    input(&args, cont);
    // sort_and_output(&args, cont);
    println!("{}", cont.size);
}
