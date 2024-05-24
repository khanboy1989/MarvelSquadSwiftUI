//
//  CharacterItemView.swift
//  
//
//  Created by Serhan Khan on 07/01/2024.
//

import SwiftUI

public struct CharacterItemView: View {
    private let name: String
    private let image: Image

    public init(name: String, image: Image) {
        self.name = name
        self.image = image
    }

    public var body: some View {
        HStack(alignment: .center) {
            image
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            Text(name)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 16)
    }
}
