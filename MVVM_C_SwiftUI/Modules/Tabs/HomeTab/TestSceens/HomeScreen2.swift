//
//  Screen2.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 25/11/24.
//

import SwiftUI

struct HomeScreen2: View {
    var body: some View {
        VStack {
            Button("Go to Screen 3") {
                NavigationService.shared.push(to: .dashboard(.home(.homeScreen3)))
            }
            Button("Back") {
                NavigationService.shared.pop()
            }
            Button("Back to root") {
                NavigationService.shared.popToRoot()
            }
        }
        .navigationTitle("Home Screen 2")
        .navigationBarBackButtonHidden()

    }
}

#Preview {
    HomeScreen2()
}

