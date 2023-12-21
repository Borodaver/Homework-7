//
//  Car.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Car {
    private var engine: String
    fileprivate let somePrivate = SomePrivateClass(some: 12)
    fileprivate let testFileprivate = 45.0
    private(set) var temp = 12.0
    private var temperature: Double = 12.0
    var testValue = 15.0
    
    init(engine: String) {
        self.engine = engine
    }
    
    func start() {
        print("Starting the car with \(engine) engine")
        // Логика запуска двигателя
    }
}

private class SomePrivateClass {
    private let some: Int
    private let another = 34
    init(some: Int) {
        self.some = some
    }
}


