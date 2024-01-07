//
//  ContentView.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 01/01/2024.
//

import SwiftUI
import CharactersList

struct ContentView: View {
    var body: some View {
        CharactersList(characterName: "Spider Man", characterAvatar: Asset.Images.avatarPlaceHolder.swiftUIImage)
    }
}

#Preview {
    ContentView()
}
