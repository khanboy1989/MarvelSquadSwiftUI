//
//  File.swift
//  
//
//  Created by Serhan Khan on 25.01.24.
//

import Foundation

struct CharacterThumbnailResponse: Decodable {
    let path: String
    let ext: String
    enum CodingKeys: String, CodingKey {
        case path
        case ext = "extension"
    }
}
