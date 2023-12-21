//
//  ResponseDecoder.swift
//  ClassesAndStruct
//
//  Created by berdy on 06.12.23.
//

import Foundation

//struct ResponseDecoder {
//  static func decode<T: Decodable>(from data: Data) throws -> T {
//    let decoder = JSONDecoder()
//    var parseData = data
//    if data.isEmpty,
//        let emptyJSONData = try? JSONSerialization.data(withJSONObject: [:], options: .prettyPrinted) {
//      parseData = emptyJSONData
//    }
//    let result = try decoder.decode(T.self, from: parseData)
//    return result
//  }
//}

enum RequestResult<T> {
  case success(result: T)
  case error(error: Error)
}
