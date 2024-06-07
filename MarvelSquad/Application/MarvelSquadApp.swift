//
//  MarvelSquadApp.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 01/01/2024.
//

import SwiftUI
import Logger
import Network

@main
struct MarvelSquadApp: App {
    let configuration: Configuration
    init() {
        let logger = Logger(label: "MarvelSquad")
        let apiClientService = APIClientService(logger: logger,
                                                configuration: .init(baseURL: URL(string: PlistFiles.apiBaseURL),
                                                baseHeaders: ["Content-Type": "application/json"]))
        configuration = .init(logger: logger, 
                              apiClientService: apiClientService, 
                              publicKey: PlistFiles.publicKey,
                              privateKey: PlistFiles.privateKey)
    }
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(configuration)
        }
    }
}
