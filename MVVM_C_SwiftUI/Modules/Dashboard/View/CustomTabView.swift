//
//  CustomTabView.swift
//  MVVM_C_SwiftUI
//
//  Created by Jaiprakash Gupta on 24/11/24.
//

import SwiftUI

struct CustomTabView: View {
    
    let systemImage, title : String
    let isActive: Bool
    
    var body: some View {
        HStack(spacing: 10) {
            Spacer()
            Image(systemName: systemImage)
                .foregroundColor(isActive ? .black : .gray)
            if isActive {
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? .black : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? nil : 60, height: 60)
        .background(isActive ? .blue.opacity(0.4) : .clear)
        .clipShape(Capsule())
    }
}

#Preview {
    CustomTabView(systemImage: "house", title: "Home", isActive: true)
}
