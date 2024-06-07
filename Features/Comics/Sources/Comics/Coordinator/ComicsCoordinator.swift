//
//  ComicsCoordinator.swift
//
//
//  Created by Serhan Khan on 29.05.24.
//

import SwiftUI
import Router
import Network
import Domain
import DomainData

public struct ComicsCoordinator: View {
    @EnvironmentObject private var router: Router
    private let dependecies: Dependecies
    public init(dependecies: Dependecies) {
        self.dependecies = dependecies
    }
    public var body: some View {
        ComicsListView(dependecies:
                .init(publicKey: dependecies.publicKey,
                      privateKey: dependecies.privateKey,
                      comicRepository: ComicRepository(apiClientService: dependecies.apiClient)))
    }
}

public extension ComicsCoordinator {
    struct Dependecies {
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
