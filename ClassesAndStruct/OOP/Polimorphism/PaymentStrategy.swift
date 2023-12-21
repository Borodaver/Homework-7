//
//  PaymentStrategy.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

protocol PaymentStrategy {
    func pay(amount: Double)
}

class CreditCardPayment: PaymentStrategy {
    func pay(amount: Double) {
        print("Paid \(amount) via credit card")
    }
}

class PayPalPayment: PaymentStrategy {
    func pay(amount: Double) {
        print("Paid \(amount) via PayPal")
    }
}

class CashPayment: PaymentStrategy {
    func pay(amount: Double) {
        print("Paid \(amount) via cash")
    }
}

class PaymentProcessor {
    var strategy: PaymentStrategy
    
    init(strategy: PaymentStrategy) {
        self.strategy = strategy
    }
    
    func processPayment(amount: Double) {
        strategy.pay(amount: amount)
    }
}
