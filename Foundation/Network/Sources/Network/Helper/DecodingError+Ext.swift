//
//  DecodingError+Ext.swift
//
//
//  Created by Serhan Khan on 02.01.24.
//

import Foundation

extension DecodingError {
    var detailErrorDescription: String {
        switch self {
        case let .typeMismatch(type, context):
            return "Type \(type) mismatch \(context.debugDescription)"
        case let .valueNotFound(type, context):
            return "Type \(type) value not found: \(context.debugDescription)"
        case let .keyNotFound(codingKey, context):
            return "Key \(codingKey) not found: \(context.debugDescription)"
        case let .dataCorrupted(context):
            return "Data corrupted: \(context.debugDescription)"
        default:
            return "Uknown Case"
        }
    }
}
