/*
Optionals are used in a situation where a value may be absent. 
The two cases for this are:
1. There is a value, and the optional can be unwrap to access that value
2. There is no value at all
*/

// Using Swift initializer to convert string to int
let numstring = "231"
let converted = Int(numstring)

// set optional variable to a valueless state
var response: Int? = 404 //contains acutual Int value (404)
response = nil //contains no value at all: nil cannot be used with non-optional constant and variables

// in the case where optional variable is declared without a value, it is automatically set to nil
var answer: String?