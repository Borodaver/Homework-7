//
//  URLs.swift
//  ClassesAndStruct
//
//  Created by berdy on 06.12.23.
//

import Foundation

struct URLs {
    private static let baseURL = URL(string: "https://google.com")
    
    private static let api = baseURL!.appendingPathComponent("api")
}


public enum NetworkCodes: Int, CaseIterable, Decodable {
    case success = 200
    case created = 201
    case badRequest = 400
    case nonAuthorized = 401
    case forbidden = 403
    case notFound = 404
    case serverError = 500
    case noConnection = -1009//NSURLErrorNotConnectedToInternet
    
    static var requestValidation: [NetworkCodes] {
        return allCases.filter({ $0 != .nonAuthorized })
    }
}
