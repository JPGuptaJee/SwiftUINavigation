//
//  SignupPage.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import SwiftUI

struct SignupPage: View {
    
    @StateObject private var vm: SignupViewModel = SignupViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image(systemName: "logo.xbox")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding(.vertical, 50)
                    Group {
                        TextField("Name", text: $vm.name)
                        TextField("Email", text: $vm.email)
                        SecureField("Password", text: $vm.password)
                        SecureField("Confirm password", text: $vm.confirmPassword)
                    }
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black.opacity(0.5), lineWidth: 1)
                    }
                    Button(action: vm.onTapSignup, label: {
                        Text("Sign Up")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .containerShape(.rect(cornerRadius: 10))
                            .foregroundStyle(.white)
                    })
                    
                    Spacer()
                    HStack {
                        Text("Already have an account?")
                        Button("Login", action: vm.onTapLogin)
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
    SignupPage()
}
