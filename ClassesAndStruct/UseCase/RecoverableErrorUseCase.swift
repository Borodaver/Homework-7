//
//  RecoverableErrorUseCase.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import UIKit

public typealias VoidClosure = (() -> Void)

struct RecoverableError: Error {
    let title: String
    let message: String?
}

extension UIViewController {
    func handle(error: Error) {
        handle(error, from: self)
    }
}

extension RecoverableError {
    init(nsError: NSError) {
        title = String()
        switch nsError.code {
        case NetworkCodes.badRequest.rawValue:
            message = "Localization.ServerError.StatusCode.badRequest()"
            
        case NetworkCodes.forbidden.rawValue:
            message = "Localization.ServerError.StatusCode.forbidden()"

        case NetworkCodes.notFound.rawValue:
            message = "Localization.ServerError.StatusCode.notFound()"

        case NetworkCodes.serverError.rawValue:
            message = "Localization.ServerError.StatusCode.serverError()"

        default:
            message = "Localization.ServerError.general()"
        }
    }
}

extension UIResponder {
    @objc func handle(_ error: Error,
                      from controller: UIViewController) {
        guard let nextItem = next else {
            return
        }
        nextItem.handle(error, from: controller)
    }
}
