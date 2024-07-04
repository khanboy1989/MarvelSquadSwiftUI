//
//  CharactersMockData.swift
//
//
//  Created by Serhan Khan on 04/07/2024.
//

import Foundation

import Foundation
import Network
import Domain
@testable import DomainData

enum CharactersJsonFile: String {
    case characters = "charactersResult"
}

struct CharactersDataWrapperTest {
    
    static func loadCharacters(from jsonFile: CharactersJsonFile) -> [Hero]? {
        
        guard let path = Bundle.testBundle.path(forResource: jsonFile.rawValue, ofType: "json"),
              let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
              let parsedData = try? JSONDecoder()
            .decode(CharactersDataWrapperResponse.self, from: data) else {
            return nil
            
        }
        
        return try? CharactersDataWrapperMapper().map(parsedData)
    }
}
