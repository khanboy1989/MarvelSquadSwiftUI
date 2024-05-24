//
//  MainTabView.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 01/01/2024.
//

import SwiftUI
import Router
import SystemDesign

struct MainTabView: View {
    @State private var selection = 0
    @ObservedObject private var router = Router()
    var body: some View {
        TabView(selection: $selection) {
            CharactersTabCoordinator()
                .tabItem {
                    Image(systemName: "person.circle")
                        .foregroundStyle(Color.black)
                    Text(L10n.herosTabTitle)
                }
                .tag(0)
                .toolbarBackground(Asset.Colors.white.swiftUIColor, for: .tabBar)
            CharactersTabCoordinator()
                .tabItem {
                    Image(systemName: "book.circle")
                        .foregroundStyle(Color.black)
                    Text(L10n.seriesTabTitle)
                        
                }
                .tag(1)
                .toolbarBackground(Asset.Colors.white.swiftUIColor, for: .tabBar)
        }
       .environmentObject(router)
    }
}

#Preview {
    MainTabView()
}
