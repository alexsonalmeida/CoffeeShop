//
//  ExempleApp.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 02/08/24.
//

import SwiftUI

@main
struct ExempleApp: App {
    @StateObject private var tabBarVisibilityManager = TabBarVisibilityManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(tabBarVisibilityManager)
        }
    }
}
