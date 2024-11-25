//
//  ProfileTabViewModel.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import Foundation

class ProfileTabViewModel: ObservableObject {
    
    func onTapLogout() {
        NavigationService.shared.updateLoginStatus(false)
    }
}
