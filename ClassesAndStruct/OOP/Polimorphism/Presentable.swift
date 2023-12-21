//
//  Presentable.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation
import UIKit

//MARK: - Полиморфизм
protocol Presentable {
    var firstName: String { get }
    var lastName: String { get }
}

struct Professor: Presentable {

    var firstName: String
    var lastName: String
}

class Bootle {
    var plastic: String
    var glass: String?
    var ceramic: String?
    
    init(plastic: String) {
        self.plastic = plastic
    }
}
