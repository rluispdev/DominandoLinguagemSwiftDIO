//: [Previous](@previous)

import Foundation

// Protocolo interno (sem public)
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "Hello, World!"
    var anotherProperty: String = "Another Property"
    
    func adjust() {
        simpleDescription += " Now adjusted!"
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(aDescription)

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "Hello, World Struct!"
    
    mutating func adjust() {
        simpleDescription += " Now adjusted =)!"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription)

// Certifique-se de que esta extensão é executada apenas uma vez
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "O número é \(self)"
    }

    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)

