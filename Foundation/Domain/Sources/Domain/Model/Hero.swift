//
//  Hero.swift
//
//
//  Created by Serhan Khan on 24.05.24.
//

import Foundation
import HelperMacros

@DefaultInit
public struct Hero: Identifiable, Equatable, Hashable {
    public let id: Int
    public let name: String
    public let description: String
    public let image: String
    public static func == (lhs: Hero, rhs: Hero) -> Bool {
        return lhs.id == rhs.id
    }
}
