let nickname: String? = nil
let fullname: String = "Qozeem Odeniran"

// provide default value string using ?? operator
let greeting = "Hi \(nickname ?? fullname)"

// use shprter speeling to unwrap a value using same name ofr that unwrap value: You can use a shorter spelling to unwrap a value, using the same name for that unwrapped value.
if let nickname {
    print("Hey, \(nickname)")
}