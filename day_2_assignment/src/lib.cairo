use core::fmt::{Display, Formatter, Error};

#[derive(Drop)]
struct Person {
    name: ByteArray,
    age: u32,
}

trait PersonTrait {
    fn greet(self: @Person);
}

impl PersonImpl of PersonTrait {
    fn greet(self: @Person) {
        let name = self.name;
        let age = *self.age;
        
        println!("Hello, my name is {} and I am {} years old.", name, age);
    }
}

fn main() {
    let alice = Person { name: "Alice", age: 30 };
    
    alice.greet();

    
}