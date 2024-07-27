//
//  CharacterItemView.swift
//
//
//  Created by Serhan Khan on 07/01/2024.
//

import SwiftUI

public struct CharacterItemView: View {
    private let name: String
    private let imageUrl: String
    public init(name: String, imageUrl: String) {
        self.name = name
        self.imageUrl = imageUrl
    }
    public var body: some View {
        HStack(alignment: .center) {
            AsyncImageView(imageUrl: imageUrl,
                           placeHolder: "person.circle",
                           height: 70,
                           width: 70,
                           cornerRadius: 8,
                           colorScheme: .dark,
                           shouldShowLoading: true)
            Text(name)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 16)
    }
}
