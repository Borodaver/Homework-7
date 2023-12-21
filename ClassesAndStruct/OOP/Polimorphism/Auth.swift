//
//  Auth.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

final class GoogleAuthStrategy: NSObject, SocialNetworkAuthStrategy {
    weak var delegate: SocialNetworkAuthStrategyDelegate?
    var socialNetwork: SocialNetworks
    
    override init() {
        socialNetwork = .google
        socialNetwork = .facebook
        socialNetwork = .twitter
        socialNetwork = .apple
        
        super.init()
    }
    
    //MARK: - Methods
    func logout() {

    }
    
    func checkValidCredentials() {
        
    }
    
    func authErrorReceived() {
        
    }
}
