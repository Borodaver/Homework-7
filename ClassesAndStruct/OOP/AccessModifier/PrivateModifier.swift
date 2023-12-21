//
//  PrivateModifier.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

private class Train {
    func startEngine() {
        
    }
}

class SecretClass {
    private init() {
        // инициализации
    }
    
    static let sharedInstance = SecretClass()
    
    func sharedFunc() {
        print("SecretClass sharedInstance")
    }
}

//private(set) используется для определения свойства,
//которое может быть доступно только для чтения извне класса
class TemperatureSensor {
    private(set) var temperature: Double = 0.0
    
    func updateTemperature(newTemp: Double) {
        temperature = newTemp
    }
}

//fileprivate ограничивает область видимости до файла,
//что обеспечивает доступ только внутри текущего файла
class Logger {
    fileprivate func logMessage(_ message: String) {
        print(message)
    }
    
    func logError(_ error: String) {
        logMessage("Error: \(error)")
    }
}


class CacheManager {
    fileprivate var cachedData: [String: Data] = [:]
    //    private let logger = Logger()
    
    func cacheData(_ data: Data, forKey key: String) {
        cachedData[key] = data
    }
    
    func retrieveData(forKey key: String) -> Data? {
        //        logger.logMessage("Error when recieve data")
        return cachedData[key]
    }
}
