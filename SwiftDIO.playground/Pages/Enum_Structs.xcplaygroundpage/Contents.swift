//: [Previous](@previous)

import Foundation

//init(size: Double, name: String) {
//    square = Square(sideLength: size, name: name)
//    triangle = EquilateralTriangle(base: size, height: size, name: name)
//}
//
//var triangleAndSquare: TriangleAndSquare(size:10, name: "another test shape")
//print(triangleAndSquare.square.sideLength)
//print(triangleAndSquare.triangle.sideLength)
//triangleAndSquare.square = Square(sideLength: 50, name: "bigger square")
//print(triangleAndSquare.triangle.sideLength)

 
//Begin Enums e Structers

enum Rank: Int{
    case ace
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String{
        switch self{
        case .ace:
            return "Ace"
        case .jack:
            return "Jack"
        case .queen:
            return "Queen"
        case .king:
            return "King"
        default:
            return String(self.rawValue)
        }
    }
}

let ace: Rank = .ace
print(ace.simpleDescription())
let aceRawValue: Int = ace.rawValue
print(aceRawValue)
let king = Rank.king.rawValue
print(king)

if let converterRank = Rank(rawValue: 11){
    print(converterRank.simpleDescription())
}else{
    print("Invalid raw value")
}

enum Suit{
    case s, spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String{
        switch self{
        case .s:
            return "Spades"
        default:
            return "Spades Default"
        }
    }
}

let hearts = Suit.clubs
print(hearts.simpleDescription())

enum ServerResponse{
    case result(String, String)
    case failure(String)
}

let sucess = ServerResponse.result("6:00pm","8:00pm")
let error = ServerResponse.failure("Out of stock")
switch sucess{
    case .result(let time1, let time2):
    print("Server time is \(time1) to \(time2)")
case .failure(let message):
    print("Failure \(message)")
}


struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "\(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let card = Card(rank: .queen, suit: .hearts)
print(card.simpleDescription())


class GoogleSheet{
    var author : String
    init(author: String) {
        self.author = author
    }
}

let file = GoogleSheet(author: "John")
let author = file.author
let fileChanged = file
fileChanged.author = "Jane"
let authorChanged = fileChanged.author
print(file.author)


struct Excel {
    var ahthor : String
}

let fileExcel = Excel(ahthor: "John")
var fileExcelChanged = fileExcel
fileExcelChanged.ahthor = "Jane"
print(fileExcel.ahthor)

