//
//  DashboardViewModel.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import Foundation
import SwiftUI

class DashboardViewModel: ObservableObject {
    
    @Published var selectedTab: TabItems = .home
    
    func onTabChange(_ tab: TabItems) {
        withAnimation {
            selectedTab = tab
        }
    }
}

enum TabItems: CaseIterable {
    case home
    case chat
    case friends
    case profile
    
    var title: String {
        switch self {
            case .home:
                return "Home"
            case .chat:
                return "Chat"
            case .friends:
                return "Friends"
            case .profile:
                return "Profile"
        }
    }
    var icon: String {
        switch self {
            case .home:
                return "house"
            case .chat:
                return "message"
            case .friends:
                return "person.2"
            case .profile:
                return "person"
        }
    }
}
