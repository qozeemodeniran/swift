// You can make generic forms of functions and methods, as well as classes, enumerations, and structures.

// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
print(possibleInteger)