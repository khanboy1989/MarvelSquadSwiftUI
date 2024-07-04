//
//  ComicRepository.swift
//
//
//  Created by Serhan Khan on 29.05.24.
//

import Foundation
import Domain
import Network

public final class ComicRepository: IComicRepository {
    private let apiClientService: IAPIClientService
    public init(apiClientService: IAPIClientService) {
        self.apiClientService = apiClientService
    }
    public func fetchComics(limit: Int, 
                            offset: Int,
                            apiKey: String,
                            timeStamp: Double,
                            hash: String) async throws -> [Comic] {
        do {
            let result = try await apiClientService.request(
                APIEndpoints.fetchComincsEndpoint(limit: limit,
                                                  offset: offset,
                                                  apiKey: apiKey, timeStamp: timeStamp, hash: hash.MD5()),
                mapper: ComicsDataWrapperMapper())
            return result
        } catch {
            throw error
        }
    }
}
