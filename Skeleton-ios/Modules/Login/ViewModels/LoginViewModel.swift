//
//  LoginViewModel.swift
//  Skeleton-ios
//
//  Created by Bernardo Cervantes Mayagoitia on 06/04/26.
//

import Foundation
import Combine
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var showErrorAlert: Bool = false
    var username: String = ""
    var password: String = ""
    let userDefaults = UserDefaults.standard
    
    init() {}
    
    func LogIn() {
        if username == "test" && password == "test123" {
            userDefaults.set(username, forKey: "username")
            NavigationManager.shared.path = NavigationPath()
        } else {
            showErrorAlert = true
        }
    }
}
