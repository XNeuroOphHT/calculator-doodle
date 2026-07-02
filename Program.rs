use std::io;

fn main() {
    let mut input = String::new();

    println!("Enter first number: ");
    io::stdin().read_line(&mut input).unwrap();
    let a: f64 = input.trim().parse().unwrap();
    input.clear();

    println!("Enter second number: ");
    io::stdin().read_line(&mut input).unwrap();
    let b: f64 = input.trim().parse().unwrap();
    input.clear();

    println!("Enter operator (+ - * /): ");
    io::stdin().read_line(&mut input).unwrap();
    let op = input.trim();

    match op {
        "+" => println!("Result: {}", a + b),
        "-" => println!("Result: {}", a - b),
        "*" => println!("Result: {}", a * b),
        "/" => {
            if b == 0.0 {
                println!("Error: division by zero!");
            } else {
                println!("Result: {}", a / b);
            }
        }
        _ => println!("Unknown operator"),
    }
}
