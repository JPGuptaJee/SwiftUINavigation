//
//  DashboardPage.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import SwiftUI

struct DashboardPage: View {
    
    @StateObject private var vm: DashboardViewModel = DashboardViewModel()
    
    var body: some View {
            ZStack(alignment: .bottom) {
                TabView(selection: $vm.selectedTab) {
                    HomeTabPage()
                        .tag(TabItems.home)
                    ChatTabPage()
                        .tag(TabItems.chat)
                    FriendsTabPage()
                        .tag(TabItems.friends)
                    ProfileTabPage()
                        .tag(TabItems.profile)
                }
                .background(.white.opacity(0.5))
                
                // MARK: - Custom Navigaiton
                HStack {
                    ForEach(TabItems.allCases, id: \.self) { item in
                        Button(action: { vm.onTabChange(item) } ) {
                            CustomTabView(systemImage: item.icon, title: item.title, isActive: (vm.selectedTab == item))
                        }
                        .disabled(vm.selectedTab == item)
                    }
                }
                .padding(6)
                .background(.blue.opacity(0.2))
                .clipShape(Capsule())
                .padding(.horizontal, 20)
            }
    }
}

#Preview {
    DashboardPage()
}
