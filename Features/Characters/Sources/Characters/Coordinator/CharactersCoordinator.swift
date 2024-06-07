//
//  CharactersCoordinator.swift
//
//
//  Created by Serhan Khan on 27/01/2024.
//

import SwiftUI
import Router
import Network
import Domain
import DomainData

enum CharacterDestination: Hashable {
    case characterDetail(hero: Hero)
}

public struct CharactersCoordinator: View {
    @EnvironmentObject private var router: Router
    private let dependecies: Dependencies
    public init(dependecies: Dependencies) {
        self.dependecies = dependecies
    }
    public var body: some View {
        CharactersListView(dependecies: .init(publicKey: dependecies.publicKey,
                          privateKey: dependecies.privateKey,
                                              characterRepository: CharacterRepository(apiClientService: dependecies.apiClient)))
        .navigationDestination(for: CharacterDestination.self, destination: { destination in
            switch destination {
            case let .characterDetail(hero):
                 CharacterDetailView(hero: hero)
                    .toolbar(.hidden, for: .tabBar)
            }
        })
    }
}

public extension CharactersCoordinator {
    struct Dependencies {
        let apiClient: IAPIClientService
        let publicKey: String
        let privateKey: String
        public init(apiClient: IAPIClientService, publicKey: String, privateKey: String) {
            self.apiClient = apiClient
            self.publicKey = publicKey
            self.privateKey = privateKey
        }
    }
}
