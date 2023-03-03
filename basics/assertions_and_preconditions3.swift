// If the code already checks the condition, you use the assertionFailure(_:file:line:) function to indicate that an assertion has failed. For example:

let age = -3

if age > 10 {
    print("qualified to ride both")
} else if age >= 0 {
    print("you can only ride one")
} else {
    assertionFailure("Age cannot be less than zero")
}