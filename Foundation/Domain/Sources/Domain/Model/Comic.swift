//
//  Comic.swift
//  
//
//  Created by Serhan Khan on 07.06.24.
//

import Foundation
import HelperMacros

@DefaultInit
public struct Comic: Identifiable, Equatable, Hashable {
    public let id: Int
    public let name: String
    public let description: String
    public let image: String
    public static func == (lhs: Comic, rhs: Comic) -> Bool {
        return lhs.id == rhs.id
    }
}
