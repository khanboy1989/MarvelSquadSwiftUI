//
//  CharacterResponse.swift
//  
//
//  Created by Serhan Khan on 12/01/2024.
//

import Foundation

struct CharacterResponse: Decodable {
    let id: Int
    let name: String
    let description: String
    let modified: String
    let resourceURI: String
    let urls: [UrlPresponse]
    let thumbnail: CharacterThumbnailResponse
    let series: SeriesResponse
    let comics: ComicResponse
}
