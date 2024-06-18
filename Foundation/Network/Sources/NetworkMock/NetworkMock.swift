//
//  NetworkMock.swift
//  
//
//  Created by Serhan Khan on 04/01/2024.
//

import Foundation

import Network
import Logger

public func createAPIClientServiceMock() -> IAPIClientService {
    return APIClientService(
        logger: NoLogger(label: ""),
        configuration: .init(
            baseURL: URL(string: "https://gateway.marvel.com"),
            baseHeaders: [
                "accept": "application/json",
                "content-type": "application/json"
            ]
        )
    )
}
