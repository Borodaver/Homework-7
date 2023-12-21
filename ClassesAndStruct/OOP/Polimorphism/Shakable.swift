//
//  Shakable.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import UIKit

// Abstraction
protocol Shakable {
    func shake()
}

open class ShakableButton: UIButton, Shakable {
    func shake() {
        print("Shake this button")
    }
}

open class ShakableView: UIView, Shakable {
    func shake() {
        print("Shake this view")
    }
}
