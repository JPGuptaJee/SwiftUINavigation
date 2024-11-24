//
//  FriendsTabPage.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import SwiftUI

struct FriendsTabPage: View {
    
    @StateObject private var vm: FriendsTabViewModel = .init()
    
    var body: some View {
        Text("Friends")
    }
}

#Preview {
    FriendsTabPage()
}
