//
//  ComicsMockData.swift
//
//
//  Created by Serhan Khan on 25.06.24.
//

import Foundation
import Network
import Domain

@testable import DomainData

enum ComicsJsonFile: String {
    case comics = "comicsResult"
}

extension ComicsDataWrapperTest {
    
    init?(jsonFile: ComicsJsonFile) {
        guard let path = Bundle.MarvelSquadTests.path(forResource: jsonFile.rawValue, ofType: "json"),
                let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
              let jsonObject = try? JSONSerialization.jsonObject(with: data),
              let parsedData = try? JSONDecoder().decode(ComicsDataWrapperResponse.self, from: data) else {
                                return nil
            }
        
        try? self.map(parsedData)
    }
    
}

struct ComicsDataWrapperTest: Mappable  {
    
    func map(_ input: ComicsDataWrapperResponse) throws -> [Comic] {
        return try ComicsDataWrapperMapper().map(input)
    }
    
}
