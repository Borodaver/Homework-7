//
//  AuthStrategy.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

public enum SocialNetworks: String {
    case google = "Google"
    case facebook = "Facebook"
    case twitter = "Twitter"
    case apple = "Apple"
}

protocol SocialNetworkAuthStrategyDelegate: AnyObject {
    func socialNetworkAuthStrategy(
        token: String,
        device: String,
        language: String,
        network: SocialNetworks
    )
    func socialNetworkAuthStrategyDidHandle(error: NSError)
}

protocol SocialNetworkAuthStrategy {
    var delegate: SocialNetworkAuthStrategyDelegate? { get set }
    var socialNetwork: SocialNetworks { get }
    func logout()
    func checkValidCredentials()
    func authErrorReceived()
}

extension SocialNetworkAuthStrategy {
    func logout() { }
    func checkValidCredentials() { }
    func authErrorReceived() { }
}
