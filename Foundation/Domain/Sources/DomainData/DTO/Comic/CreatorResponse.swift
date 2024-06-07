//
//  CreatorResponse.swift
//  
//
//  Created by Serhan Khan on 07.06.24.
//

import Foundation

struct CreatorResponse: Decodable {
    let name: String
    let resourceURI: String
    let role: String
}

struct CreatorsWrapperResponse: Decodable {
    let returned: Int
    let collectionURI: String
    let items: [CreatorResponse]
}
