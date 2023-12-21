//
//  BankAccount.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class BankAccount {
    var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) {
        balance -= amount
    }
}

class SavingsAccount: BankAccount {
    var interestRate: Double
    
    init(balance: Double, interestRate: Double) {
        self.interestRate = interestRate
        super.init(balance: balance)
    }
    
    func addInterest() {
        balance *= (1 + interestRate)
    }
}


