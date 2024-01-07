// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import CommonUI

public struct CharactersList: View {
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
