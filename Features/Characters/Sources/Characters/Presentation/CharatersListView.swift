//
//  File.swift
//  
//
//  Created by Serhan Khan on 27/01/2024.
//

import Foundation

import SwiftUI
import CommonUI

public struct CharactersListView: View {
    private let characterName: String
    private let characterAvatar: Image

    public init(characterName: String, characterAvatar: Image) {
        self.characterName = characterName
        self.characterAvatar = characterAvatar
    }

    public var body: some View {
        VStack {
            CharacterItemView(name: characterName, image: characterAvatar)
        }
    }
}
