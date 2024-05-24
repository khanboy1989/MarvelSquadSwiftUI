//
//  ComicsResponse.swift
//
//
//  Created by Serhan Khan on 24/05/2024.
//

import Foundation

struct ComicsResponse: Decodable {
    let returned: Int
    let collectionURI: String
    let available: Int
    let items: [ComicsItem]
}

struct ComicsItem: Decodable {
    let name: String
    let resourceURI: String
}
