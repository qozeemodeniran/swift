var optionalName: String? = nil // optional varible
var greeting = "Hello!"

// make conditional
if let name = optionalName {
    greeting = "Hello \(name)"
}
else {
    greeting = "Hey, what's your name?"
}
print(greeting)