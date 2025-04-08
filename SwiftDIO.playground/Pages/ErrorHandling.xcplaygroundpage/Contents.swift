 import Foundation

enum PrinterError: Error {
    case outOfpaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}


do {
    let printResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printResponse)
}catch{
    print(error)
}



do {
    let printResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printResponse)
} catch  PrinterError.onFire{
    print("I'll just put this over here and hope it goes out.")
} catch let printerError  as PrinterError {
    print("Print Error \(printerError)")
}catch{
    print(error)
}

let printerSucess = try? send(job: 1880, toPrinter: "Free Printer")
let printerFailure = try? send(job: 1880, toPrinter: "Never Has Toner")

var fridgeIsOpen = false
var fridgeContent = ["milk", "eggs", "leftovers"] // corrigido

@MainActor
func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    let result = fridgeContent.contains(food)
    return result
}

fridgeContent.append("chicken")
print(fridgeContains("chicken"))  // true
print(fridgeIsOpen)               // false
