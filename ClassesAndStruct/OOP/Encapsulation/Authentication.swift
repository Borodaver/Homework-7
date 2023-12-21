//
//  Authentication.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

enum Authentication {
    case usernamePassword(String, String)
    case token(String)
    
    private var isValid: Bool {
        switch self {
            case .usernamePassword(let username, let password):
                return !username.isEmpty && !password.isEmpty
            case .token(let token):
                return !token.isEmpty
        }
    }
    
    func authenticate() {
        if isValid {
            print("Authentication successful")
        } else {
            print("Invalid credentials")
        }
    }
}
