//
//  AuthRouteBuilder.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 25/11/24.
//

import SwiftUI

struct AuthRouteBuilder {
    
    // MARK: - Variable(s)
    let routes: Routes.AuthRoutes

    // MARK: - ViewBuilder
    @ViewBuilder
    func configure() -> some View {
        switch routes {
            case .login:
                LoginPage()
            case .signup:
                SignupPage()
        }
    }

}
