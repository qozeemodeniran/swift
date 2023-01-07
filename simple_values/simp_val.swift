// define a variable: value can change
var age = 28;
// print("Constant value: ", name)

// define a constant: value cannot change once assigned
let name = "Qozeem Odeniran"
// print("Variable value: ", age)

// specify type explicityly: not necessary though
var hair: String = "black";
let cgpa: Float = 4.0

// Type conversion
let description = "The boy is "
let height = 5

// explicitly make an instance of the desired type: in our case, we are converting to String
let statement = description + String(height) + " inches tall";
// print(statement)

// including values in strings: use \(), where varaiable or constant values goes into the parenthesis
let about = "Hello, my name is \(name), and I am \(age) years old. Also, I am \(height) inches tall."
// print(about)

// using """ """ for string spaning multiple lines
let major = "Information Technology"
let statement2 = """
\(name), a \(age) years old gradute student majoring in \(major) is a very dedicated student and love to write computer programs. \(statement).
"""
// print(statement2)

// create an empty array
var emptyLanguages: [String] = [] 
// print(emptyLanguages)

// create non-empty array
var languages = ["Swift", "Objecttive-C", "Java", "Kotlin", "Dart", "Others"]

// access element if an array
// print(languages[2])

// change array element
languages[5] = "Flutter" // change "Others" to "Flutter"
// print("updated array: ", languages)

// add to array
languages.append("...and many more")
// print(languages)

// create empty dictionary
var emptyQozeem: [String: Float] = [:]
// print(emptyQozeem)

// create dictionary
var qozeem = [ 
    "name": "Qozeem odeniran",
    "age": "28",
    "major": "Information Technology",
    "cgpa": "4.0", // comma is allowed at the end of the last item 
]
// print(qozeem)

// add new item to dictionary
qozeem["interest"] = "Software Engineering"
print("Updated Dictionary:", qozeem) 