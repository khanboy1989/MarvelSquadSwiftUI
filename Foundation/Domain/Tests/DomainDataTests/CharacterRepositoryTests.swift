//
//  CharacterRepositoryTests.swift
//  
//
//  Created by Serhan Khan on 24.06.24.
//

import Domain
import XCTest
import DomainDataMock
@testable import DomainData

final class CharacterRepositoryTests: XCTestCase {
    var sut: ICharacterRepository!
    override func setUp() {
         sut = CharacterRepositoryMock()
    }
    func testFetchCharacters() async {
        let data = try? await sut.fetchCharacters(limit: 10, offset: 10, apiKey: "", timeStamp: 10.0, hash: "")
        XCTAssertNotNil(data)
        XCTAssertEqual(data?.first?.name, "3-D Man")
    }
}
