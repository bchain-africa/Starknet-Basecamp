fn main() {
    let modulus_result = modulus(96, 69);
    println!("The result of the modulus operation is: {}", modulus_result);

    let addition_result = add(10, 10);
    println!("The result of the addition operation is: {}", addition_result);

    let subtraction_result = subtract(10, 10);
    println!("The result of the subtraction operation is: {}", subtraction_result);

    let multiplication_result = multiply(2, 2);
    println!("The result of the multiplication operation is: {}", multiplication_result);

    let division_result = divide(10, 2);
    println!("The result of the division operation is: {}", division_result);

    let modulus_result = modulus(10, 3);
    println!("The result of the modulus operation is: {}", modulus_result);
}

// Basic arithmetic operations

// Modulus
fn modulus(x: u16, y: u16) -> u16 {
    x % y
}

// Addition
fn add(x: u16, y: u16) -> u16 {
    x + y
}

// Subtraction
fn subtract(x: u16, y: u16) -> u16 {
    x - y
}

// Multiplication
fn multiply(x: u16, y: u16) -> u16 {
    x * y
}

// Division
fn divide(x: u16, y: u16) -> u16 {
    x / y
}

