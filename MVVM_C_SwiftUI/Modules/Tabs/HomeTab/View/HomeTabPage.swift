//
//  HomeTabPage.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import SwiftUI

struct HomeTabPage: View {
    
    @StateObject private var vm: HomeTabViewModel = HomeTabViewModel()
    
    var body: some View {
        VStack {
            Button("Go to Screen 1") {
                NavigationService.shared.push(to: .dashboard(.home(.homeScreen1)))
            }
        }
    }
}

#Preview {
    HomeTabPage()
}
