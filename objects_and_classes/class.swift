// create a class
class Shape {
    // create varaible inside a class
    var sides = 0;

    // create a function/method with a return statement inside a class
    func Description() -> String {
        return "This shape has \(sides) sides."
    }
}

// create an instance of a class
var shape = Shape()

// access the the properties and methods of the instance
shape.sides = 7
var description = shape.Description()

print(shape.sides)
print(description)
