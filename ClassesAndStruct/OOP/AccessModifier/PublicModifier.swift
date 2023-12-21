//
//  PublicModifier.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation



public class ExampleClass {
    internal func internalMethod() {
        
    }
    
    public func publicMethod() {
        
    }
}

public class Mathematics {
    public let pi = 3.14159
    
    public func squareRoot(of value: Double) -> Double {
        return sqrt(value)
    }
    
    public init() {
        // инициализации
    }
}

open class Shape {
    open func draw() {
        
    }
    
    public init() {
        // инициализации
    }
}

open class Circle: Shape {
    open override func draw() {
        
    }
    
    public init(radius: Double) {
        // инициализации
        super.init()
    }
}

open class FrameworkComponent {
    open func performAction() {
        // Логика действия компонента
    }
}

public class Reporting {
    func generateReport(_ reportError: String) -> String {
        let report =  reportError
        // Логика обработки и отправки репортов
        return report
    }
}
