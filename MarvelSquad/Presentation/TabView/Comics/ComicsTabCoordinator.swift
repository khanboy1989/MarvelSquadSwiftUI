//
//  ComicsTabCoordinator.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 29.05.24.
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
    ComicsTabCoordinator()
}
