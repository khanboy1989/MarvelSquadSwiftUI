//
//  APIEndpoints.swift
//
//
//  Created by Serhan Khan on 25.01.24.
//

import Foundation
import Network

enum APIEndpoints {
    static func fetchCharactersEndpoint(limit: Int, 
                                        offset: Int?,
                                        apiKey: String,
                                        timeStamp: Date,
                                        hash: String) -> APIEndpoint {
        return .init(path: "/characters", httpMethod: .get,
                     urlQueries: ["limit": limit.description,
                                  "offset": offset.debugDescription ?? 0.description,
                           "apiKey": apiKey,
                           "ts": timeStamp.timeIntervalSince1970.description,
                           "hash": hash ])
    }
}
