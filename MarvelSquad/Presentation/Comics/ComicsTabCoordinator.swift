//
//  ComicsTabCoordinator.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 07/06/2024.
//

import SwiftUI
import Router
import Comics

struct ComicsTabCoordinator: View {
    @EnvironmentObject var configuration: Configuration
    @EnvironmentObject var router: Router
    var body: some View {
        NavigationStack(path: $router.navPath) {
            ComicsCoordinator(dependecies: .init(
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
