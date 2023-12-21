//
//  User.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

struct User {
    
    private var password: String
    
    init(password: String) {
        self.password = password
    }
    
    mutating func changePassword(newPassword: String) {
        password = newPassword
    }
    
    func getPassword() -> String {
        return password
    }
    
    var isAuthenticated: Bool {
        return checkPassword()
    }
    
    private func checkPassword() -> Bool {
        return password.count >= 8
    }
}
