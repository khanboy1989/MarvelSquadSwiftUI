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
                                        offset: Int,
                                        apiKey: String,
                                        timeStamp: Double,
                                        hash: String) -> APIEndpoint {
        return .init(path: "/v1/public/characters", httpMethod: .get,
                     urlQueries: ["limit": limit.description,
                                  "offset": offset.description,
                           "apikey": apiKey,
                                  "ts": timeStamp.description,
                           "hash": hash])
    }
    
    static func fetchComincsEndpoint(limit: Int, offset: Int, apiKey: String, timeStamp: Double, hash: String) -> APIEndpoint {
        
        return .init(path: "/v1/public/comics", 
                     httpMethod: .get,
                     urlQueries: ["limit": limit.description, 
                                  "offset" : offset.description,
                                  "apikey": apiKey,
                                  "ts": timeStamp.description ,
                                  "hash" : hash])
    }
}
