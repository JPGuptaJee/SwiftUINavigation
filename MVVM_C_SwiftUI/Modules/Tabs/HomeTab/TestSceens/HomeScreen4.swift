//
//  Screen4.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 25/11/24.
//


import SwiftUI

struct HomeScreen4: View {
    var body: some View {
        VStack {
            Button("Back to Screen 1") {
                NavigationService.shared.pop(to: .dashboard(.home(.homeScreen1)))
            }
            Button("Back to Screen 2") {
                NavigationService.shared.pop(to: .dashboard(.home(.homeScreen2)))
            }
            Button("Back") {
                NavigationService.shared.pop()
            }
            Button("Back to root") {
                NavigationService.shared.popToRoot()
            }
        }
        .navigationTitle("Home Screen 4")
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeScreen4()
}
