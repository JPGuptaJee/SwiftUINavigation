//
//  LoginPage.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 22/11/24.
//

import SwiftUI

struct LoginPage: View {
    
    @StateObject var vm: LoginViewModel = LoginViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image(systemName: "logo.xbox")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding(.vertical, 50)
                    Group {
                        TextField("Email", text: $vm.email)
                        SecureField("Password", text: $vm.password)
                    }
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black.opacity(0.5), lineWidth: 1)
                    }
                    Button(action: vm.onTapLogin, label: {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .containerShape(.rect(cornerRadius: 10))
                            .foregroundStyle(.white)
                    })
                    
                    HStack {
                        Spacer()
                        Button("Forgot password?", action: vm.onTapForgotPassword)
                    }
                    Spacer()
                    HStack {
                        Text("Don't have an account?")
                        Button("Signup", action: vm.onTapSignUp)
                    }
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, minHeight: geometry.size.height)
            }
            .scrollBounceBehavior(.basedOnSize)
        }
        
    }
}

#Preview {
    LoginPage()
}
