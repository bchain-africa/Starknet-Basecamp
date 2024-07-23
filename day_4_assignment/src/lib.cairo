
#[derive(Drop)]
struct Rectangle {
    l: u32,
    w: u32,
}

#[derive(Drop)]
struct Square {
    s: u32,
}

#[derive(Drop)]
struct Circle {
    r: u32,
}

#[derive(Drop)]
struct Triangle {
    b: u32,
    h: u32,
}

trait Geometry<T> {
    fn print(self: @T);
    fn calculate_perimeter(self :@T);
    fn calculate_area(self: @T);
}

//implemetation block for the rectangle 
impl ReactangleGoemetryImpl of Geometry<Rectangle>{
    fn print(self: @Rectangle) {
        println!("This Rectangle is of sides {} X {}", *self.l, *self.w);
    }

    fn calculate_perimeter(self: @Rectangle){
        let perimeter = 2 * (*self.l + *self.w);
        println!("The perimter of the Rectangle is:{}", perimeter);

    }

    fn calculate_area(self: @Rectangle){
        let area = *self.l * *self.w;
        println!("The area of the Rectangle is: {}", area);
    }
}

//implementation block for square

impl SquareGoemetryImpl of Geometry<Square>{

    fn print(self: @Square){
        println!("The square has equal sides of : {}", self.s);
    }

    fn calculate_perimeter(self: @Square){
        let perimeter = 4 * (*self.s);
        println!("The perimeter of the square is : {}", perimeter);
    }

    fn calculate_area(self: @Square){
        let area =  *self.s * *self.s;
        println!("The area of the sqaure is : {}", area);
    }

}

//implementation block for cire

impl CircleGeometryImpl of Geometry<Circle>{
    fn print(self: @Circle) {
        println!("The circle has a radius of :{}", *self.r);
    }

    fn calculate_perimeter(self: @Circle) {
        //const PI:f64 = 3.14;
        let perimeter = 2 * (*self.r);
        println!("The perimeter of the circle is :{}", perimeter);
    }

    fn calculate_area(self: @Circle) {
        let area = (*self.r * *self.r);
        println!("The area of the circle is : {}", area);
    }
}

//implementation block for Triangle

impl TriangleGeometryImpl of Geometry<Triangle>{
    fn print(self: @Triangle) {
        println!("The Rectangle has a base of :{} and height of :{}", *self.b, *self.h);
    }

    fn calculate_perimeter(self: @Triangle) {
        //const PI:f64 = 3.14;
        let perimeter = 2 * (*self.b);
        println!("The Triangle of the circle is :{}", perimeter);
    }

    fn calculate_area(self: @Triangle) {
        let area = (*self.b * *self.h);
        println!("The area of the Triangle is : {}", area);
    }
}


fn main() {
    let rect = Rectangle{
        l: 4,
        w: 2,
    };

    rect.print();
    rect.calculate_area();
    rect.calculate_perimeter();

    let square = Square{
        s: 10,
    };

    square.print();
    square.calculate_area();
    square.calculate_perimeter();

    let circle = Circle{
        r: 4,
    };

    circle.print();
    circle.calculate_perimeter();
    circle.calculate_area();

    let triangle = Triangle{
        b: 6,
        h: 2,
    };

    triangle.print();
    triangle.calculate_perimeter();
    triangle.calculate_area();
}

