enum PrinterError: Error {
    case noPaper
    case noToner
    case noPower
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    throw PrinterError.onFire
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

// To throw an error inside the do block, you need to throw an error that is of the same type as PrinterError. To handle the error in the first catch block, you need to throw PrinterError.onFire. The second catch block is able to handle any errors of type PrinterError, so you could throw PrinterError.noPaper, PrinterError.noToner, or PrinterError.noPower. The third catch block can handle any error, so you could throw any error other than PrinterError.