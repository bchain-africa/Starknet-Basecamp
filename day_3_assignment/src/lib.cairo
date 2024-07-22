// Basic arithmetic calculator

fn main() {
    let sum = calculate(15, 5, Operation::Add);
    println!("Addition result: {}", sum);

    let difference = calculate(20, 7, Operation::Subtract);
    println!("Subtraction result: {}", difference);

    let product = calculate(6, 4, Operation::Multiply);
    println!("Multiplication result: {}", product);

    let quotient = calculate(50, 5, Operation::Divide);
    println!("Division result: {}", quotient);
}

// Enum to represent arithmetic operations
enum Operation {
    Add,
    Subtract,
    Multiply,
    Divide,
}

// Function to perform arithmetic operations
fn calculate(a: u16, b: u16, op: Operation) -> u16 {
    match op {
        Operation::Add => a + b,
        Operation::Subtract => a - b,
        Operation::Multiply => a * b,
        Operation::Divide => a / b,
    }
}