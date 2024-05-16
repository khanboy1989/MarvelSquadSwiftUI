//
//  CharactersTabCoordinator.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 05/02/2024.
//

import SwiftUI
import Router
import Characters

struct CharactersTabCoordinator: View {
    @EnvironmentObject var configuration: Configuration
    @ObservedObject var router = Router()
    var body: some View {
        NavigationStack(path: $router.navPath) {
            CharactersCoordinator(dependecies: .init(
                apiClient: configuration.apiClientService,
                publicKey: configuration.publicKey,
                privateKey: configuration.privateKey))
                .toolbar(.visible, for: .tabBar)
        }.environmentObject(router)
    }
}

#Preview {
    CharactersTabCoordinator()
}
