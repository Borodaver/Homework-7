//
//  Product.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Product {
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

class ElectronicsProduct: Product {
    var brand: String
    
    init(name: String, price: Double, brand: String) {
        self.brand = brand
        super.init(name: name, price: price)
    }
}

class ClothingProduct: Product {
    var size: String
    
    init(name: String, price: Double, size: String) {
        self.size = size
        super.init(name: name, price: price)
    }
}

class FoodProduct: Product {
    var expirationDate: Date
    
    init(name: String, price: Double, expirationDate: Date) {
        self.expirationDate = expirationDate
        super.init(name: name, price: price)
    }
}
