// create function
/**
By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.
*/
func intro(_ name: String, on major: String) -> String {
    return "Hello \(name), you will be najoring in \(major)."
}

// call function
print(intro("Qozeem Odeniran", on: "IT"))

/**
Note: the "->" is used to set the function return type
*/