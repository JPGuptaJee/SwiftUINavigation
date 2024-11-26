//
//  Screen3.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 25/11/24.
//

import SwiftUI

struct HomeScreen3: View {
    var body: some View {
        VStack {
            Button("Go to Screen 4") {
                NavigationService.shared.push(to: .dashboard(.home(.homeScreen4)))
            }
            Button("Back to Screen 1") {
                NavigationService.shared.pop(to: .dashboard(.home(.homeScreen1)))
            }
            Button("Back") {
                NavigationService.shared.pop()
            }
            Button("Back to root") {
                NavigationService.shared.popToRoot()
            }
        }
        .navigationTitle("Home Screen 3")
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeScreen3()
}
