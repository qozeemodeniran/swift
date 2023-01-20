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

// In addition to simple properties that are stored, properties can have a getter and a setter.
class EquilateralTriangle: Shape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        sides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func Description() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)