//
//  File.swift
//
//
//  Created by Serhan Khan on 25.01.24.
//

import Foundation
import Domain
import Network

public final class CharacterRepository: ICharacterRepository {
    private let apiClientService: IAPIClientService
    init(apiClientService: IAPIClientService) {
        self.apiClientService = apiClientService
    }
    public func fetchCharacters(limit: Int, offset: Int?, apiKey: String, timeStamp: Date, hash: String) async -> Bool  {
        do {
            let result = try await apiClientService.request(
                APIEndpoints.fetchCharactersEndpoint(limit: limit,
                                                                                                 offset: offset,
                                                                                                 apiKey: apiKey, timeStamp: timeStamp, hash: hash),
                                                            for: Result.self)
            return result.success
        } catch {
            return false
        }
    }
    
    
}
