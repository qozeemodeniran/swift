/**
Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that’s long or complex.
*/
func returnFullname() -> String {
    var firstname = "Qozeem"
    func add() {
        firstname += " Odeniran"
    }
    add()
    return firstname
}
print(returnFullname())