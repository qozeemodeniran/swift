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

// create another subclass: Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area() and a simpleDescription() method on the Circle class.
class Circle: Shape {
    var radius: Double
    init(radius: Double, name: Sring) {
        self.radius = radius
        super.init(name:name)
        radius = 6
    }

    func area() -> Double {
        return 3.142 * radius * radius
    }

    override func Description() -> String {
        return "A circle with radius of \(radius)."
    }
}
let testCircle = Circle(radius: 6.3, name: "My test circle")
testCircle.area()
testCircle.Description()