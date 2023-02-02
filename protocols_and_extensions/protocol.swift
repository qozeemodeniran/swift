// define a protocol
protocol Myprotocol {
    var Description: String {get}
    mutating func adjust()
}

// class, enumerations, and structures can all adopt protocols
class Myclass: Myprotocol {
    var Description: String="Simple class."
    var ID: Int = 101321

    func adjust() {
        Description += " Now adjusted 101%."
    }
}

var c = Myclass()
c.adjust()
let cDescription = c.Description

struct Mystructure: Myprotocol {
    var Description: String="Simple structure"
    mutating func adjust() {
        Description += " (adjusted)"
    }
}

var s = Mystructure()
s.adjust()
let sDescription = s.Description

/** Add another requirement to MyProtocol. What changes do you need to make to MyClass and Mytructure so that they still conform to the protocol?

see 'protocol2.swift'
*/



