//
//  Screen1.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 25/11/24.
//

import SwiftUI

struct HomeScreen1: View {
    var body: some View {
        VStack {
            Button("Go to Screen 2") {
                NavigationService.shared.push(to: .dashboard(.home(.homeScreen2)))
            }
            Button("Back to root") {
                NavigationService.shared.popToRoot()
            }
        }
        .navigationTitle("Home Screen 1")
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeScreen1()
}
