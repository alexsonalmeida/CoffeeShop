//
//  TabBarButton.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 02/02/25.
//

import SwiftUI

struct TabBarButton: View {
    let icon: String
    let index: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0)) {
                selectedTab = index
            }
        }) {
            VStack {
                Image(systemName: selectedTab == index ? "\(icon).fill" : icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
                    .foregroundColor(selectedTab == index ? .color1 : .gray)
                
                if selectedTab == index {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.color1)
                        .frame(width: 12, height: 6)
                        .offset(y: 5)
                }
            }
        }
    }
}

#Preview {
    TabBarButton(icon: "house", index: 0, selectedTab: .constant(0))
}
