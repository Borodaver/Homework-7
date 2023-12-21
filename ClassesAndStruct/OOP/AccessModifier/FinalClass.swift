//
//  FinalClass.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation
import UIKit

final class RecoverableErrorUseCase {
    var retryAction: VoidClosure?
    weak var target: UIViewController?
    
    //MARK: - Logic
    func handle(error: NSError) {
        guard let errorPresetable = target else { return }
        let recoverableError = RecoverableError(nsError: error)
        errorPresetable.handle(error: recoverableError)
    }
}

final class UserProfile {
    var name: String
    var email: String
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

final class Singleton {
    static let shared = Singleton()
    private init() { }
    
    func doSomething() {
        print("We use singleton final class")
        // Логика действий единственного экземпляра класса Singleton
    }
}

final class AppCoordinator {
    private weak var window: UIWindow?
    
    //MARK: - Initialization
    init(window: UIWindow?) {
        self.window = window
    }
}

final class SearchHistoryManager {
    private var searchHistory: [String] = []
    
    func addToHistory(_ query: String) {
        searchHistory.append(query)
    }
    
    func clearHistory() {
        searchHistory.removeAll()
    }
}

final class UserSessionManager {
    private var isLoggedIn: Bool = false
    
    func loginUser(username: String, password: String) {
        // Логика входа пользователя
        isLoggedIn = true
    }
    
    func logoutUser() {
        // Логика выхода пользователя
        isLoggedIn = false
    }
}

final class NotificationSender {
    func sendLocalNotification(with content: UNNotificationContent) {
        // Логика отправки локального уведомления
    }
    
    func sendRemoteNotification(with payload: [String: Any]) {
        // Логика отправки удаленного уведомления
    }
}
