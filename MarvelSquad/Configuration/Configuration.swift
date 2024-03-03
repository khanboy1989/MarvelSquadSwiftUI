//
//  Configuration.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 04/01/2024.
//

import Foundation
import Logger
import Network

class Configuration: ObservableObject {
    let logger: ILogger
    let apiClientService: IAPIClientService
    let publicKey: String
    let privateKey: String
    init(logger: ILogger, apiClientService: IAPIClientService, publicKey: String, privateKey: String) {
        self.logger = logger
        self.apiClientService = apiClientService
        self.publicKey = publicKey
        self.privateKey = privateKey
    }
}
