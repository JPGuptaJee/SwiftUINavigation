//
//  NavigationService.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 25/11/24.
//

import Foundation

final class NavigationService: ObservableObject {
    
    static let shared = NavigationService()
    
    private init() { }
    
    // MARK: - Wrapper variable(s)
    @Published var navigationPath: Array<Routes> = Array<Routes>()
    @Published var isLoggedIn: Bool = UserDefaults.standard.bool(forKey: "isLoggedIn")
    
    func updateLoginStatus(_ isLoggedIn: Bool) {
        guard self.isLoggedIn != isLoggedIn else { return }
        UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
        self.isLoggedIn = isLoggedIn
        popToRoot()
    }
    
    // MARK: - Basic navigation method(s)
    func push(to route: Routes) {
        navigationPath.append(route)
    }
    
    func pop(to route: Routes? = nil) {
        if let route {
            guard let index = navigationPath.firstIndex(of: route) else { return }
            navigationPath = Array(navigationPath[0...index])
        } else {
            guard !navigationPath.isEmpty else { return }
            navigationPath.removeLast()
        }
    }
    
    func pop(to step: Int) {
        guard navigationPath.count > step else { return }
        navigationPath.removeLast(step)
    }
    
    func popToRoot(push route: Routes? = nil) {
        navigationPath.removeAll()
        if let route {
            push(to: route)
        }
    }
}
