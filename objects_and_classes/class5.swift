class Shape {
    var sides: Int = 0
    var name: String

    // use the init() function to create and initializer: used to set the class when an instance is created.
    init(name: String) {
        self.name = name
    }

    func Description() -> String {
        return "A shape with \(sides) sides."
    }
}

// create a sub class
class Square: Shape {
    // properties of sub class
    var length: Double
    
    // initializer for subclass properties
    init(length: Double, name: String) {
        self.length = length
        
        // using superclass attribute
        super.init(name: name)
        sides = 4
    }

    // function of subclass
    func area() -> Double {
        return sides * length
    }

    // overriding the method of the super class
    override func Description() -> String {
        return "A qusare has sides of length \(length)."
    }
}

// In addition to simple properties that are stored, properties can have a getter and a setter.
class EquilateralTriangle: Shape {
    var length: Double = 0.0

    init(length: Double, name: String) {
        self.length = length
        super.init(name: name)
        sides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * length
        }
        set {
            length = newValue / 3.0
        }
    }

    override func Description() -> String {
        return "An equilateral triangle with sides of length \(length)."
    }
}

// If you don’t need to compute the property but still need to provide code that’s run before and after setting a new value, use willSet and didSet. The code you provide is run any time the value changes outside of an initializer. For example, the class below ensures that the side length of its triangle is always the same as the side length of its square.

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.length = newValue.length
        }
    }
    var square: Square {
        willSet {
            triangle.length = newValue.length
        }
    }
    init(size: Double, name: String) {
        square = Square(length: size, name: name)
        triangle = EquilateralTriangle(length: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.length)

// When working with optional values, you can write ? before operations like methods, properties, and subscripting. If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil. Otherwise, the optional value is unwrapped, and everything after the ? acts on the unwrapped value. In both cases, the value of the whole expression is an optional value.

let optionalSquare: Square? = Square(length: 2.5, name: "optional square")
let length = optionalSquare?.length