/*
Functions are a first-class type. This means that a function can return another function as its value.
*/

// function one
func makeIncrement() -> ((Int) -> Int) {

    // function two
    func addOne(number: Int) -> Int {
        return 1 + number
    }

    // function one returns function two
    return addOne
}
var increment = makeIncrement()
print(increment(7))