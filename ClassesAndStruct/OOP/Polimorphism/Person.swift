//
//  Person.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

//Добавьте set к внутреннему свойству, чтобы сделать их недоступными для установки извне вашего модуля.

class Person {
    private(set) var name: String
    private(set) var surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}


struct Data {
    let chair: String
    let sofa: String
    let bed: String
}
