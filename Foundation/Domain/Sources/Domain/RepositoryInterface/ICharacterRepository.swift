//
//  ICharacterRepository.swift
//  
//
//  Created by Serhan Khan on 25.01.24.
//

import Foundation

public protocol ICharacterRepository {
    func fetchCharacters(limit: Int, offset: Int, apiKey: String, timeStamp: Date, hash: String) async -> Bool
}
