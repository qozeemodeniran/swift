/**
To add new rewuirement to the Myprotocol, so that Myclass, and Mystructure still conform to Myprotocol...
*/

// define a protocol
protocol Myprotocol {
    var Description: String {get}
    // step 1: add new requirement here
    var Requirement: Int {get set}
    mutating func adjust()
}

// class, enumerations, and structures can all adopt protocols
class Myclass: Myprotocol {
    var Description: String="Simple class."
    var ID: Int = 101321
    // step 2: make changes to Myclass so that it sstill conform to Myprotocol
    var Requirement: Int = 0

    func adjust() {
        Description += " Now adjusted 101%."
    }
}

var c = Myclass()
c.adjust()
let cDescription = c.Description

struct Mystructure: Myprotocol {
    var Description: String="Simple structure"
    // step 3: make change(s) to Mystructure so it still conforms to Myprotocol
    var Requirement: Int = 0
    mutating func adjust() {
        Description += " (adjusted)"
    }
}

var s = Mystructure()
s.adjust()
let sDescription = s.Description

// use extension to functionality to an existing type such as methods and computed properties
extension Int: Myprotocol {
    var Description: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

// print(7.Description)

let protocolValue: MyProtocol = a
print(protocolValue.Description)


