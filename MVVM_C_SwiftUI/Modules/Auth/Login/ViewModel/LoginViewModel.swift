//
//  LoginViewModel.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 22/11/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    func onTapLogin() {
        NavigationService.shared.updateLoginStatus(true)
    }
    
    func onTapSignUp() {
        NavigationService.shared.push(to: .auth(.signup))
    }
    
    func onTapForgotPassword() {
        
    }
}
