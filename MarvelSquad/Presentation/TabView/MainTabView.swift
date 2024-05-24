//
//  MainTabView.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 01/01/2024.
//

import SwiftUI
import Router

struct MainTabView: View {
    @State private var selection = 0
    @ObservedObject private var router = Router()
    
    var body: some View {
        TabView(selection: $selection) {
            CharactersTabCoordinator()
                .tabItem {
                    Text("TV Series")
                        .foregroundColor(Color.red)
                }
                .tag(0)
                .toolbarBackground(Color.black, for: .tabBar)
            CharactersTabCoordinator()
                .tabItem {
                    Text("TV Series")
                        .foregroundColor(Color.red)
                }
                .tag(1)
                .toolbarBackground(Color.black, for: .tabBar)
        }
        .environmentObject(router)
    }
}

#Preview {
    MainTabView()
}
