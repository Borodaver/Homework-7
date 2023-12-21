//
//  Request.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

protocol Request {
    var endpoint: String { get }
    var method: String { get }
}

struct GETRequest: Request {
    let endpoint: String
    let method: String = "GET"
}

struct POSTRequest: Request {
    let endpoint: String
    let method: String = "POST"
}

class RequestHandler {
    func handleRequest(request: Request) {
        print("Handling \(request.method) request to \(request.endpoint)")
    }
}

class SendRequest {
    var url: String
    var method: String
    
    init(url: String, method: String) {
        self.url = url
        self.method = method
    }
    
    func sendRequest() {
        fatalError("Error")
    }
}

class SendGETRequest: SendRequest {
    override func sendRequest() {
        print("Sending GET request to \(url)")
        // Логика для отправки GET-запроса
    }
}

class SendPOSTRequest: SendRequest {
    var body: String
    
    init(url: String, body: String) {
        self.body = body
        super.init(url: url, method: "POST")
    }
    
    override func sendRequest() {
        print("Sending POST request to \(url) with body: \(body)")
        // Логика для отправки POST-запроса с данными body
    }
}
