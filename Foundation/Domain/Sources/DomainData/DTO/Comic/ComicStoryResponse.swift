//
//  ComicStoryResponse.swift
//
//
//  Created by Serhan Khan on 05.06.24.
//

import Foundation

struct ComicStoryWrapper: Decodable {
    let returned: Int
    let collectionURI: String
    let items: [ComicStoryItemResponse]
    let available: Int
}

struct ComicStoryItemResponse: Decodable {
    let name: String
    let resourceURI: String
    let type: String
}
