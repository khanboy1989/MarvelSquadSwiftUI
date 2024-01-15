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
    init(logger: ILogger, apiClientService: IAPIClientService) {
        self.logger = logger
        self.apiClientService = apiClientService
    }
}
