//
//  CharactersResponse.swift
//
//
//  Created by Serhan Khan on 25.01.24.
//

import Foundation
import Network
import Domain

public struct CharactersDataWrapperMapper: Mappable {
    public init() {}
    public func map(_ input: CharactersDataWrapperResponse) throws -> [Hero] {
        return try input.data.results.map { try CharacterResponseMapper().map($0)}
    }
}

public struct CharactersDataWrapperResponse: Decodable {
    let code: Int
    let status: String
    let copyright: String
    let attributionText: String
    let attributionHTML: String
    let data: CharactersResponse
}

public struct CharactersResponse: Decodable {
    let results: [CharacterResponse]
}

public struct CharacterResponseMapper: Mappable {
    public func map(_ input: CharacterResponse) throws -> Hero {
        return .init(id: input.id,
                     name: input.name,
                     description: input.description,
                     image: input.thumbnail.path + "." + input.thumbnail.ext)
    }
}
