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
        Text("Home")
    }
}

#Preview {
    HomeTabPage()
}
