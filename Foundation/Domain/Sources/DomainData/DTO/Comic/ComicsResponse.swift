//
//  ComicsResponse.swift
//
//
//  Created by Serhan Khan on 03.06.24.
//

import Foundation
import Network
import Domain

public struct ComicsDataWrapperMapper: Mappable {
    public init() {}
    public func map(_ input: ComicsDataWrapperResponse) throws -> [Comic] {
        return try input.data.results.map { try ComicResponseMapper().map($0) }
    }
}

public struct ComicsDataWrapperResponse: Decodable {
    let code: Int
    let status: String
    let copyright: String
    let attributionText: String
    let attributionHTML: String
    let data: ComicsResponse
}

public struct ComicsResponse: Decodable {
    let results: [ComicResponse]
}

struct ComicResponse: Decodable {
    let id: Int
    let digitalId: Int
    let title: String
    let variantDescription: String
    let description: String?
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
    let thumbnail: CharacterThumbnailResponse
    let stories: ComicStoryWrapper
    let issueNumber: Int
    let creators: CreatorsWrapperResponse
}

struct ComicResponseMapper: Mappable {
    func map(_ input: ComicResponse) throws -> Comic {
        return .init(id: input.id,
                     name: input.title,
                     description: input.description ?? "",
                     image: input.thumbnail.path + "." + input.thumbnail.ext)
    }
}
