enum PrinterError: Error {
    case noPaper
    case noToner
    case noPower
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print(error)
}

// Now, the function send(job:toPrinter:) will throw an error of type PrinterError.noToner when the printer name is "Never Has Toner".