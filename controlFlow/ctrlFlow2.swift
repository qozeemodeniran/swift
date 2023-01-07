// create optiona string using datatype?: e.g String?
var name: String? = "Qozeem"
// print(name == nil) //check if "name is empty"

var optionalName: String? = "Qozeem Odeniran"
var greeting = "Hello!"

if let name2 = optionalName {
    greeting = "Hello, \(name2)"
}
print(greeting)