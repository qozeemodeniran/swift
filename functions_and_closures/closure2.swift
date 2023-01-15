/*
You can refer to parameters by number instead of by name—this approach is 
especially useful in very short closures. A closure passed as the last argument 
to a function can appear immediately after the parentheses. When a closure is 
the only argument to a function, you can omit the parentheses entirely.
*/
var numbers = [20, 19, 7, 12]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
let sortedNumbers = numbers.sorted{$0<$1}
print(sortedNumbers)
