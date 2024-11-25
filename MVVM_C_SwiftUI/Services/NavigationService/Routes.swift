//
//  Routes.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 25/11/24.
//

import Foundation

enum Routes: Hashable {
    
    // MARK: - Initial Routes
    case auth(AuthRoutes)
    case dashboard(DashboardRoutes)
    
    // MARK: - Sub-Routes of Auth
    enum AuthRoutes: Hashable {
        case login
        case signup
    }
    
    // MARK: - Sub-Routes of Dashboard
    enum DashboardRoutes: Hashable {
        case home(HomeRoutes)
        case chat(ChatRoutes)
        case friends(FriendsRoutes)
        case profile(ProfileRoutes)
        
        // MARK: - Sub-Routes of Home tab
        enum HomeRoutes: Hashable {
            case homeScreen1
            case homeScreen2
            case homeScreen3
            case homeScreen4
        }
        
        // MARK: - Sub-Routes of Chat tab
        enum ChatRoutes: Hashable {
            case chatScreen1
            case chatScreen2
            case chatScreen3
            case chatScreen4
        }
        
        // MARK: - Sub-Routes of Friends tab
        enum FriendsRoutes: Hashable {
            case friendsScreen1
            case friendsScreen2
            case friendsScreen3
            case friendsScreen4
        }
        
        // MARK: - Sub-Routes of Profile tab
        enum ProfileRoutes: Hashable {
            case profileScreen1
            case profileScreen2
            case profileScreen3
            case profileScreen4
        }
        
    }
}
