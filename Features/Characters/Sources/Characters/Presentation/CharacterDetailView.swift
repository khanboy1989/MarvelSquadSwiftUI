//
//  CharacterDetailView.swift
//
//
//  Created by Serhan Khan on 27.05.24.
//

import SwiftUI
import SystemDesign
import CommonUI
import Domain

struct CharacterDetailView: View {
    private let hero: Hero
    init(hero: Hero) {
        self.hero = hero
    }
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                AsyncImage(url: URL(string: hero.image), content: { phase in
                    switch phase {
                    case .empty:
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 150)
                            .frame(maxWidth: .infinity)
                    case let .success(image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 150)
                            .frame(maxWidth: .infinity)
                    case .failure(_):
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 150)
                            .frame(maxWidth: .infinity)
                    default:
                        EmptyView()
                    }
                })
                Spacer()
            }
        }.ignoresSafeArea(.container, edges: .top)
        .screenBackground(with: Asset.Colors.white.swiftUIColor)
          
    }
}
