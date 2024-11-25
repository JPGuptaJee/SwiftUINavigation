//
//  ContentView.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 22/11/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Wrapper variable(s)
    @StateObject private var navigationService: NavigationService = NavigationService.shared
    
    // MARK: -
    var body: some View {
        NavigationStack(path: $navigationService.navigationPath) {
            Group {
                if navigationService.isLoggedIn {
                    DashboardPage()
                } else {
                    LoginPage()
                }
            }
            .navigationDestination(for: Routes.self) { route in
                switch route {
                    case .auth(let authRoute):
                        AuthRouteBuilder(routes: authRoute).configure()
                    case .dashboard(let dashboardRoute):
                        DashboardRouteBuilder(routes: dashboardRoute).configure()
                }
            }
        }
        .environmentObject(navigationService)
    }
}

#Preview {
    ContentView()
}
