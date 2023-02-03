enum PrinterError: Error {
    case noPaper
    case noToner
    case noPower
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never has toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Qozeem Odeniran")
    print(printerResponse)
} catch {
    print(error)
}
