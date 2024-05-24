//
//  SeriesResponse.swift
//
//
//  Created by Serhan Khan on 24/05/2024.
//

import Foundation

struct SeriesResponse: Decodable {
    let returned: Int
    let collectionURI: String
    let available: Int
    let items: [SeriesItem]
}

struct SeriesItem: Decodable {
    let name: String
    let resourceURI: String
}
