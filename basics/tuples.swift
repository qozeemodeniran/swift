let http403Error = (403, "Forbidden")
print(http403Error)

// decomposing tuple's contents into separate constants/variable which can be access normally
let (code, message) = http403Error
print("Status code is \(code)")
print("Server message is \(message)")

// ignoring other values of the tuple
let (codeOnly, _) = http403Error
print(codeOnly)

// accessing each elemnets of a tuple using index number starting from zero
print(http403Error.0)
print(http403Error.1)

// naming each element in the tuple at definition stage
let statusOK = (code: 200, desc: "OK")
print("status code: \(statusOK.code)")
print("status description: \(statusOK.desc)")
