//
//  TabViewi.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 01/02/25.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var tabBarVisibilityManager: TabBarVisibilityManager
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            VStack {
                TabBarViewContent(selectedTab: selectedTab)
            }
            
            if tabBarVisibilityManager.isTabBarVisible {
                VStack {
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .shadow(radius: 10)
                            .frame(height: 100)
                            .padding(.horizontal, 0)

                        HStack {
                            TabBarButton(icon: "house", index: 0, selectedTab: $selectedTab)
                            Spacer()
                            TabBarButton(icon: "heart", index: 1, selectedTab: $selectedTab)
                            Spacer()
                            TabBarButton(icon: "bag", index: 2, selectedTab: $selectedTab)
                            Spacer()
                            TabBarButton(icon: "bell", index: 3, selectedTab: $selectedTab)
                        }
                        .padding(.horizontal, 40)
                    }
                }
            }

        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}
#Preview {
    TabBarView()
}
