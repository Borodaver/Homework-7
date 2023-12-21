//
//  EncryptionManager.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class EncryptionManager {
    private func encryptData(_ data: String) -> String {
        // Логика шифрования данных
        return "encrypted_" + data
    }
    
    private func decryptData(_ encryptedData: String) -> String {
        // Логика дешифрования данных
        return encryptedData.replacingOccurrences(of: "encrypted_", with: "")
    }
    
    func sendEncryptedData(_ data: String) {
        let encrypted = encryptData(data)
        // Отправка зашифрованных данных
        receiveEncryptedData(encrypted)
    }
    
    private func receiveEncryptedData(_ encryptedData: String) {
        let decrypted = decryptData(encryptedData)
        print("Received data: \(decrypted)")
    }
}
