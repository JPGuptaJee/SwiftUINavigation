//
//  ChatTabPage.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import SwiftUI

struct ChatTabPage: View {
    
    @StateObject private var vm: ChatTabViewModel = .init()
    
    var body: some View {
        Text("Chat")
    }
}

#Preview {
    ChatTabPage()
}
