//Simple calculator program

fn main() {

    let addition_result =  add(10,10);
    println!("The result of the addition operation is:{}", addition_result);

    let subtraction_result =  subtract(10, 10);
    println!("The result of the subtraction operation is:{}", subtraction_result);

    let multiplication_result = multiply(2, 2);
    println!("The result of the multiplication operation is:{}", multiplication_result);

    let division_result = division(10, 2);
    println!("The result from the division operations is:{}", division_result);

}

//Basic arithemetic operations 
//addition
fn add(x:u16, y:u16) ->u16{
    x + y
}

//Subtraction
fn subtract(x:u16, y:u16) ->u16 {
    x - y
}

//multiplication
fn multiply(x:u16, y:u16) ->u16 {
    x * y
}

//division

fn division(x:u16, y:u16) ->u16 {
    x / y
}