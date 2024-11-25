//
//  SignupViewModel.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//
import Foundation

class SignupViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    
    func onTapSignup() {
        NavigationService.shared.updateLoginStatus(true)
    }
    
    func onTapLogin() {
        NavigationService.shared.pop()
    }
    
}
