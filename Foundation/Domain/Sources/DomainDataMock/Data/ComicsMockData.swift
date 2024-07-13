//
//  ComicsMockData.swift
//
//
//  Created by Serhan Khan on 25.06.24.
//

import Foundation
import Network
import Domain
import DomainData

public enum ComicsJsonFile: String {
    case comics = "comicsResult"
}
public struct ComicsDataWrapperTest {
    static func loadComics(from jsonFile: ComicsJsonFile) -> [Comic]? {
        guard let path = Bundle.testBundle.path(forResource: jsonFile.rawValue, ofType: "json"),
              let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
              let parsedData = try? JSONDecoder().decode(ComicsDataWrapperResponse.self, from: data) else {
            return nil
        }
        return try? ComicsDataWrapperMapper().map(parsedData)
    }
}
