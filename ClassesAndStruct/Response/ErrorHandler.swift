//
//  ErrorHandler.swift
//  ClassesAndStruct
//
//  Created by berdy on 06.12.23.
//

import Foundation

enum ErrorHandler: Int, LocalizedError, CaseIterable {
    
    case unauthorized = 101
    case invalidData = 102
    case occupiedEmail = 103
    case serverError = 104
    case incorrectCredentials = 105
    case userNotFound = 106
    case unsupportedFile = 107
    
    case paymentWasDeclined = 201
    case invalidRequest = 202
    case invalidCredentials = 203
    case permissionDenied = 204
    case resourceNotFound = 205
    case requestTimedOut = 206
    case internalServerError = 207
    
    var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "Пожалуйста, авторизируйтесь заново."
        case .invalidData:
            return "Проверьте, пожалуйста, корректность введенных данных"
        case .occupiedEmail:
            return "Данный почтовый адрес используется другой учётной записью"
        case .serverError:
            return "Ошибка на стороне сервера. Пожалуйста, повторите действие."
        case .incorrectCredentials:
            return "Неверный e-mail или пароль."
        case .userNotFound:
            return "Пользователь не найден."
        case .unsupportedFile:
            return "Неподдерживаемый формат файла. Пожалуйста, загрузите фото в формате *jpg или *png."
        case .paymentWasDeclined:
            return "Платеж отклонен."
        case .invalidRequest, .invalidCredentials, .permissionDenied,
             .resourceNotFound, .requestTimedOut, .internalServerError:
            return "Возникла ошибка на стороне платежного сервиса, попробуйте повторить."
        }
    }
}
