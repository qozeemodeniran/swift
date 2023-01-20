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

// create object of subclass
let testSquare = Square(length: 5.2, name: "My test square")
testSquare.area()
testSquare.Description()



// In addition to simple properties that are stored, properties can have a getter and a setter.
