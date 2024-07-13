//
//  ComicRepositoryTests.swift
//  
//
//  Created by Serhan Khan on 24.06.24.
//

import Domain
import XCTest
import DomainDataMock
@testable import DomainData

final class ComicRepositoryTests: XCTestCase {
    var sut: IComicRepository!
    override func setUp() {
        sut = ComicRepositoryMock()
    }
    override func tearDown() {
        super.tearDown()
        sut = nil 
    }
    func testFetchComics() async {
        let data = try? await sut.fetchComics(limit: 10, offset: 10, apiKey: "", timeStamp: 0.0, hash: "")
        XCTAssertNotNil(data)
        XCTAssertEqual(data?.first?.name, "Marvel Previews (2017)")
    }
}
