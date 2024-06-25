//
//  Bundle+TestData.swift
//
//
//  Created by Serhan Khan on 25.06.24.
//

import Foundation

final class TestBundleClass {}

extension Bundle {
    static var MarvelSquadTests: Bundle {
        return Bundle(for: TestBundleClass.self)
    }
}
