//
//  ContentView.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 01/01/2024.
//

import SwiftUI
import Characters

struct ContentView: View {
    var body: some View {
        CharactersListView(characterName: "Spider Man", characterAvatar: Asset.Images.avatarPlaceHolder.swiftUIImage)
    }
}

#Preview {
    ContentView()
}
