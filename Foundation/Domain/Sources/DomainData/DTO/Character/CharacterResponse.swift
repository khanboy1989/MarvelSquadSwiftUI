//
//  CharacterResponse.swift
//  
//
//  Created by Serhan Khan on 12/01/2024.
//

import Foundation

public struct CharacterResponse: Decodable {
    let id: Int
    let name: String
    let description: String
    let modified: String
    let resourceURI: String
    let urls: [UrlPresponse]
    let thumbnail: CharacterThumbnailResponse
    let series: CharacterSeriesResponse
    let comics: CharacterComicResponse
}
