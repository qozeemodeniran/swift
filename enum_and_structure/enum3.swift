enum ServerResponse {
    case result(String, String)
    case failure(String)
    case unknown(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of reach")
let unknown = ServerResponse.unknown("Unknown request")

switch unknown {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
case let .unknown(status):
    print("Sorry...this is an \(status)")
}