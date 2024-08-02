//
//  TabBarViewContent.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 02/02/25.
//

import SwiftUI

struct TabBarViewContent: View {
    let selectedTab: Int
    
    var body: some View {
        switch selectedTab {
            case 0:
                Home()
            case 1:
                Favorites()
            case 2:
                Shop()
            case 3:
                Notifications()
            default:
                Home()
        }
    }
}

#Preview {
    TabBarViewContent(selectedTab: 0)
}
