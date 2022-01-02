#![allow(non_snake_case)]
#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]

mod matrices;
mod container;

use std::{env, io, time};
use std::fs::File;
use std::io::{Read, Write};
use std::time::{Duration, Instant};
use rand::Rng;
use rand::rngs::ThreadRng;
use crate::container::container::Container;
use crate::container::container::ContainerInterface;

fn input(args: &Vec<String>, cont: &mut Container) {
    if args[1] == "-f" {
        file_input(args, cont);
    } else if args[1] == "-r" {
        random_input(args, cont, args[2].parse::<usize>().unwrap());
    } else {
        println!("LMAO the arguments are wrong");
    }
}

fn file_input(args: &Vec<String>, cont: &mut Container) {
    let mut file: File = std::fs::File::open(args[2].clone()).unwrap();
    let mut info_in_one_string: String = String::new();
    file.read_to_string(&mut info_in_one_string);
    let mut vector_info: Vec<String> = info_in_one_string.split('\n').map(|s: &str| s.to_string()).collect();
    let mut info: &mut [String] = &mut vector_info;
    cont.input(info);
}

fn random_input(args: &Vec<String>, cont: &mut Container, size: usize) {
    cont.size = size;
    cont.random_input();
}

fn sort_and_output(args: &Vec<String>, cont: &mut Container) {
    let mut file: File = std::fs::File::create(args[3].clone()).unwrap();
    file.write_all(b"Container:\n\n");
    cont.output(&mut file);
    file.write_all(b"\n\nAnd now sorted container:\n\n");
    cont.sort();
    cont.output(&mut file);
}

fn main() {
    let start_time: Instant = time::Instant::now();

    let args: Vec<String> = env::args().collect();
    let cont: &mut Container = &mut Container { size: 0, matrs: Vec::new() };
    println!("{}", cont.size);
    input(&args, cont);
    sort_and_output(&args, cont);
    println!("{}", cont.size);

    let elapsed: Duration = start_time.elapsed();
    println!("Elapsed: {:.2?}", elapsed);
}
