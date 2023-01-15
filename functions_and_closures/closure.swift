/*
You can write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body.
*/
var numbers = [20, 19, 7, 12]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)