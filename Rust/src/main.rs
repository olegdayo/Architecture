mod container;
mod matr;
mod matrices;

use crate::container::Container;
use std::fs::File;
use std::io::{Read, Write};
use std::time::{Duration, Instant};
use std::{env, time};

fn input(args: &[String], cont: &mut Container) -> Result<(), std::io::Error> {
    match &args[1] as &str {
        "-f" => file_input(args, cont)?,

        "-n" => random_input(cont, args[2].parse::<usize>().unwrap()),

        _ => println!("LMAO the arguments are wrong"),
    }

    Ok(())
}

fn file_input(args: &[String], cont: &mut Container) -> Result<(), std::io::Error> {
    let mut file: File = std::fs::File::open(args[2].clone()).unwrap();
    let mut info_in_one_string: String = String::new();
    file.read_to_string(&mut info_in_one_string)?;

    let mut vector_info: Vec<String> = info_in_one_string
        .split('\n')
        .map(|s| s.to_string())
        .collect();

    let info: &mut [String] = &mut vector_info;
    cont.input(info);

    Ok(())
}

fn random_input(cont: &mut Container, size: usize) {
    cont.size = size;
    cont.random_input();
}

fn sort_and_output(args: &[String], cont: &mut Container) -> Result<(), std::io::Error> {
    let mut file: File = std::fs::File::create(args[3].clone()).unwrap();

    file.write_all(b"Container:\n\n")?;
    cont.output(&mut file)?;

    file.write_all(b"\n\nAnd now sorted container:\n\n")?;
    cont.sort();
    cont.output(&mut file)?;

    Ok(())
}

fn main() -> Result<(), std::io::Error> {
    let start_time: Instant = time::Instant::now();

    let args: Vec<String> = env::args().collect();
    let cont: &mut Container = &mut Container {
        size: 0,
        matrs: Vec::new(),
    };

    println!("{}", cont.size);
    input(&args, cont)?;
    sort_and_output(&args, cont)?;
    println!("{}", cont.size);

    let elapsed: Duration = start_time.elapsed();
    println!("Elapsed: {:.2?}", elapsed);

    Ok(())
}
