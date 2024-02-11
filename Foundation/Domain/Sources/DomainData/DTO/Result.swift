//
//  File.swift
//  
//
//  Created by Serhan Khan on 25.01.24.
//

import Foundation

struct Result: Decodable {
    let success: Bool
    let statusCode: Int
    let statusMessage: String
    enum CodingKeys: String, CodingKey {
        case success
        case statusCode = "status_code"
        case statusMessage = "status_message"
    }
}
