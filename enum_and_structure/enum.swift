// create an enum
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    // create a funciton/method insdie the enum
    func Description() -> String {
        switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "queen"
            default:
                return String(self.rawValue)
        }
    }

    // function that compares two Rank values by comparing their raw values
    static func compareRanks(rank1: Rank, rank2: Rank) -> Int {
        if rank1.rawValue < rank2.rawValue {
            return -1
        } else if rank1.rawValue == rank2.rawValue {
            return 0
        } else {
            return 1
        }
    }
}

let ace = Rank.ace
let aceRawValue  = ace.rawValue

let rank1 = Rank(rawValue: 4)
let rank2 = Rank(rawValue: 8)
print(Rank.compareRanks(rank1: rank1!, rank2: rank2!))