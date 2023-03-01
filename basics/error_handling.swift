// A function indicates that it can throw an error by including the throws keyword in its declaration
fun canThrowError() throws {
    // this function that may or may not throw an error
}

// When you call a function that can throw an error, you prepend the try keyword to the expression.
do {
    try canThrowError()
    // no error thrown
} catch {
    // error thrown
}