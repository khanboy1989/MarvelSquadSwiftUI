//
//  Bundle+Test.swift
//
//
//  Created by Serhan Khan on 13/07/2024.
//

import Foundation
public extension Bundle {
    static var testBundle: Bundle = {
        // This assumes the resources are in the main bundle
        // For a Swift package, you would use Bundle.module
        return .module
    }()
}
