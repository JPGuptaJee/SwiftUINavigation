//
//  ProfileTabPage.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import SwiftUI

struct ProfileTabPage: View {
    
    @StateObject private var vm: ProfileTabViewModel = .init()
    
    var body: some View {
        Button("Logout", action: vm.onTapLogout)
    }
}

#Preview {
    ProfileTabPage()
}
