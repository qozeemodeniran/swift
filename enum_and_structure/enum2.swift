enum Suit {
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

print(heartsColor)