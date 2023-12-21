//
//  DocumentFormat.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class DocumentFormat {
    let extensionName: String
    
    init(extensionName: String) {
        self.extensionName = extensionName
    }
}

class PDFDocument: DocumentFormat {
    func createPDF() {
        print("Creating a PDF document with \(extensionName) extension")
    }
}

class DOCXDocument: DocumentFormat {
    func createDOCX() {
        print("Creating a DOCX document with \(extensionName) extension")
    }
}
