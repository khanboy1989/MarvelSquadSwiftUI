//
//  CharacterListViewModelTests.swift
//
//
//  Created by Serhan Khan on 05/07/2024.
//

import XCTest
import DomainDataMock
import Domain
@testable import Characters

final class CharacterListViewModelTests: XCTestCase {
    var sut: CharactersListViewModel!
    private var mockCharacterRepository: ICharacterRepository!
    override func setUp() {
        super.setUp()
        mockCharacterRepository = CharacterRepositoryMock()
        sut = CharactersListViewModel(dependencies: 
                                        CharactersListViewModel.Dependecies(publicKey: "", privateKey: "",
                                                                            characterRepository: mockCharacterRepository))
    }
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    func testFetchCharacters() async {
        XCTAssertEqual(sut.state, .loading)
        await sut.fetch(limit: 10, offSet: 10)
        switch sut.state {
        case .display(let heros):
            XCTAssertNotNil(heros)
        case .loading:
            XCTFail("Loading is not expected")
        }
    }
}
