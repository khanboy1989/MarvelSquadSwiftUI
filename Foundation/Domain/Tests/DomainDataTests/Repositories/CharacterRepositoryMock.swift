//
//  CharacterRepositoryMock.swift
//
//
//  Created by Serhan Khan on 25.06.24.
//

import Foundation
import Domain
@testable import DomainData

final class CharacterRepositoryMock: ICharacterRepository {
    func fetchCharacters(limit: Int, offset: Int, apiKey: String, timeStamp: Double, hash: String) async throws -> [Domain.Hero] {
        if let data = CharactersDataWrapperTest.loadCharacters(from: .characters) {
            return data
        } else {
            return []
        }
    }
}
