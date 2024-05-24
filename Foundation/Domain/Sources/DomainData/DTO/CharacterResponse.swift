//
//  CharacterResponse.swift
//  
//
//  Created by Serhan Khan on 12/01/2024.
//

import Foundation

struct CharactersDataWrapperResponse: Decodable {
    let data: [CharacterResponse]
}
struct CharacterResponse: Decodable {
    let id: Int
    let name: String
    let description: String
    let modified: String
    let resourceURI: String
    let urls: [CharacterUrlPresponse]
    let thumbnail: CharacterThumbnailResponse
}
