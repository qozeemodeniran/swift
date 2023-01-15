/*
A function can take another function as one of its arguments.
*/

// function one
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) ->
Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
// function two
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]

// use function two as an argument for function one
print(hasAnyMatches(list: numbers, condition: lessThanTen))