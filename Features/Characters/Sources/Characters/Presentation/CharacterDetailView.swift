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
        VStack(spacing: 4) {
            AsyncImage(url: URL(string: hero.image)) { phase in
                switch phase {
                case .empty:
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                case let .success(image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                case .failure:
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                default:
                    EmptyView()
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color.white) // Ensure the background matches the screen background
            Text(hero.description)
            Spacer()
        }
        .ignoresSafeArea(edges: .top) // Ignore safe area at the top
        .background(Asset.Colors.white.swiftUIColor)
    }
}
