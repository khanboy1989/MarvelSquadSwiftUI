//
//  ComicRepositoryTests.swift
//  
//
//  Created by Serhan Khan on 24.06.24.
//

import Domain
import XCTest
@testable import DomainData

final class ComicRepositoryTests: XCTest {
    
    var sut: IComicRepository!
    
    override func setUp() {
        sut = ComicRepositoryMock()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil 
    }
}
