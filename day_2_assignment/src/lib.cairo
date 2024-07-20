
fn main() {
    let tup: (u32, u64, bool) = (10, 20, true);
    let (x, y, z)= tup;
    println!("This is the tuple:{}", x);
    println!("This is the tuple:{}", y);
    println!("This is the tuple:{}", z);
}
