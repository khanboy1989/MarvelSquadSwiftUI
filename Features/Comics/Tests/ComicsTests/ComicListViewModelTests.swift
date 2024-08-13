//
//  ComicListViewModelTests.swift
//
//
//  Created by Serhan Khan on 13/08/2024.
//

import XCTest
import Domain
import DomainDataMock
@testable import Comics

final class ComicListViewModelTests: XCTestCase {
    var sut: ComicsListViewModel!
    private var mockComicsRepository: IComicRepository!
    override func setUp() {
        super.setUp()
        mockComicsRepository = ComicRepositoryMock()
        sut = ComicsListViewModel(dependecies: .init(publicKey: "", privateKey: "", comicRepository: mockComicsRepository))
    }
    override func tearDown() {
        super.tearDown()
        sut = nil
        mockComicsRepository = nil
    }
    func testFetchComics() async {
        XCTAssertEqual(sut.state, .loading)
        await sut.fetch(limit: 10, offset: 0)
        switch sut.state {
        case .display(let comics):
            XCTAssertNotNil(comics)
        case .loading:
            XCTFail("Loading is not expected")
        }
    }
}
