// create an enum
enum Rank: Int, CaseIterable {
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

enum Suit: CaseIterable {
    case spades, hearts, diamonds, clubs

    func Description() -> String {
        switch self {
            case .spades:
                return "spades"
            
            case .hearts:
                return "hearts"

            case .diamonds:
                return "diamonds"

            case .clubs:
                return "clubs"
        }
    }

    /*
    Add a color() method to Suit that returns “black” for spades and clubs, and returns “red” for hearts and diamonds.
    */
    func color() -> String {
        switch self {
            case .spades, .clubs:
                return "black"

            case .hearts, .diamonds:
                return "red"
        }
    }
}

let hearts = Suit.hearts
let spades = Suit.spades
let diamonds = Suit.diamonds
let clubs = Suit.clubs
let heartsDescription = hearts.Description()
let heartsColor = diamonds.color()

struct Card {
    var rank: Rank
    var suit: Suit

    func Description() -> String {
        return "The \(rank.Description()) of \(suit.Description())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.Description()

/*
Write a function that returns an array containing a full deck of cards, with one card of each combination of rank and suit.
*/
func fullDeck() -> [Card] {
    var deck: [Card] = []
    for suit in Suit.allCases {
        for rank in Rank.allCases {
            let card = Card(rank: rank, suit: suit)
            deck.append(card)
        }
    }
    return deck
}

let deck = fullDeck()

print(deck)

