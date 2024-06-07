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
            return "Type \(type) mismatch at \(context.codingPathDescription): \(context.debugDescription)"
        case let .valueNotFound(type, context):
            return "Type \(type) value not found at \(context.codingPathDescription): \(context.debugDescription)"
        case let .keyNotFound(codingKey, context):
            return "Key \(codingKey) not found at \(context.codingPathDescription): \(context.debugDescription)"
        case let .dataCorrupted(context):
            return "Data corrupted at \(context.codingPathDescription): \(context.debugDescription)"
        @unknown default:
            return "Unknown Case"
        }
    }
}

private extension DecodingError.Context {
    var codingPathDescription: String {
        codingPath.map { $0.stringValue }.joined(separator: " -> ")
    }
}
