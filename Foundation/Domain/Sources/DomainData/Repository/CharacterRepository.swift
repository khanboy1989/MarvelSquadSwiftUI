//
//  CharacterRepository.swift
//
//
//  Created by Serhan Khan on 25.01.24.
//

import Foundation
import Domain
import Network
import Helpers

public final class CharacterRepository: ICharacterRepository {
    private let apiClientService: IAPIClientService
    public init(apiClientService: IAPIClientService) {
        self.apiClientService = apiClientService
    }
    public func fetchCharacters(limit: Int,
                                offset: Int,
                                apiKey: String,
                                timeStamp: Double,
                                hash: String) async throws -> [Hero] {
        do {
            let result = try await apiClientService.request(
                APIEndpoints.fetchCharactersEndpoint(limit: limit,
                                                     offset: offset,
                                                     apiKey: apiKey, timeStamp: timeStamp, hash: hash.MD5()),
                mapper: CharactersDataWrapperMapper())
            return result
        } catch {
            throw error
        }
    }
}
