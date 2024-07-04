//
//  Bundle+TestData.swift
//
//
//  Created by Serhan Khan on 25.06.24.
//

import Foundation
extension Bundle {
    public static var testBundle: Bundle = {
        // This assumes the resources are in the main bundle
        // For a Swift package, you would use Bundle.module
        return .module
    }()
}
