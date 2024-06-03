//
//  ComicsResponse.swift
//
//
//  Created by Serhan Khan on 03.06.24.
//

import Foundation

struct ComicsResponse: Decodable {
    let id: Int
    let digitalId: Int
    let title: String
    let variantDescription: String
    let description: String
    let modified: String
    let isbn: String
    let upc: String
    let diamondCode: String
    let ean: String
    let issn: String
    let format: String
    let pageCount: Int
    let resourceURI: String
    let urls: [UrlPresponse]
    let series: ComicsSeriesResponse
    let variants: [VariantResponse]
    let dates: [DateResponse]
}
