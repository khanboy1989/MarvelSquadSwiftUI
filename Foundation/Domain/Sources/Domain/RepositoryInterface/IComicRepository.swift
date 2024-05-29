//
//  IComicsRepository.swift
//
//
//  Created by Serhan Khan on 29.05.24.
//

import Foundation

public protocol IComicRepository {
    func fetchComics(limit: Int, offset: Int, apiKey: String, timeStamp: Double, hash: String)
}
