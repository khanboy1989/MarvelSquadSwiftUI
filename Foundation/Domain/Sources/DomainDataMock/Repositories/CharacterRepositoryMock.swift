//
//  CharacterRepositoryMock.swift
//
//
//  Created by Serhan Khan on 25.06.24.
//

import Foundation
import Domain
public final class CharacterRepositoryMock: ICharacterRepository {
    public init() {}
    public func fetchCharacters(limit: Int, offset: Int, apiKey: String, timeStamp: Double, hash: String) async throws -> [Hero] {
        if let data = CharactersDataWrapperTest.loadCharacters(from: .characters) {
            return data
        } else {
            return []
        }
    }
}
