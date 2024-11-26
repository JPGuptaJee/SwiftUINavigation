//
//  DashboardRouteBuilder.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 25/11/24.
//

import SwiftUI

struct DashboardRouteBuilder {
    
    // MARK: - Variable(s)
    let routes: Routes.DashboardRoutes
    
    // MARK: - ViewBuilder function
    @ViewBuilder
    func configure() -> some View {
        switch routes {
            case .home(let homeRoutes):
                HomeRouteBuilder(route: homeRoutes).configure()
            case .chat(let chatRoutes):
                ChatRouteBuilder(route: chatRoutes).configure()
            case .friends(let friendsRoutes):
                FriendsRouteBuilder(route: friendsRoutes).configure()
            case .profile(let profileRoutes):
                ProfileRouteBuilder(route: profileRoutes).configure()
        }
    }
}

struct HomeRouteBuilder {
    
    // MARK: - Variable(s)
    let route: Routes.DashboardRoutes.HomeRoutes
    
    // MARK: - ViewBuilder function
    @ViewBuilder
    func configure() -> some View {
        switch route {
        case .homeScreen1:
            HomeScreen1()
        case .homeScreen2:
            HomeScreen2()
        case .homeScreen3:
            HomeScreen3()
        case .homeScreen4:
            HomeScreen4()
        }
    }
}

struct ChatRouteBuilder {
    
    // MARK: - Variable(s)
    let route: Routes.DashboardRoutes.ChatRoutes
    
    // MARK: - ViewBuilder function
    @ViewBuilder
    func configure() -> some View {
        switch route {
            case .chatScreen1:
                Text("ChatScreen1")
            case .chatScreen2:
                Text("ChatScreen2")
            case .chatScreen3:
                Text("ChatScreen3")
            case .chatScreen4:
                Text("ChatScreen4")
        }
    }
}

struct FriendsRouteBuilder {
    
    // MARK: - Variable(s)
    let route: Routes.DashboardRoutes.FriendsRoutes
    
    // MARK: - ViewBuilder function
    @ViewBuilder
    func configure() -> some View {
        switch route {
            case .friendsScreen1:
                Text("FriendsScreen1")
            case .friendsScreen2:
                Text("FriendsScreen2")
            case .friendsScreen3:
                Text("FriendsScreen3")
            case .friendsScreen4:
                Text("FriendsScreen4")
        }
    }
}

struct ProfileRouteBuilder {
    
    // MARK: - Variable(s)
    let route: Routes.DashboardRoutes.ProfileRoutes
    
    // MARK: - ViewBuilder function
    @ViewBuilder
    func configure() -> some View {
        switch route {
            case .profileScreen1:
                Text("ProfileScreen1")
            case .profileScreen2:
                Text("ProfileScreen2")
            case .profileScreen3:
                Text("ProfileScreen3")
            case .profileScreen4:
                Text("ProfileScreen4")
        }
    }
}
