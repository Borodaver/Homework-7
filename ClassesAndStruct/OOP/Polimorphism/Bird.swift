//
//  Bird.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

protocol Flyable {
    func fly()
}

protocol Swimmable {
    func swim()
}

class Bird: Flyable {
    func fly() {
        print("Flying in the sky")
    }
}

class Duck: Flyable, Swimmable {
    func fly() {
        print("Flying in the sky like a duck")
    }
    
    func swim() {
        print("Swimming in the water")
    }
}
