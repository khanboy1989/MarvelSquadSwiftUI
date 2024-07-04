//
//  ComicRepositoryMock.swift
//
//
//  Created by Serhan Khan on 25.06.24.
//

import Foundation
import Domain
@testable import DomainData

final class ComicRepositoryMock: IComicRepository {
    func fetchComics(limit: Int, offset: Int, apiKey: String, timeStamp: Double, hash: String) async throws -> [Domain.Comic] {
        if let data =  ComicsDataWrapperTest.loadComics(from: .comics) {
            return data
        } else {
            return []
        }
    }
}
