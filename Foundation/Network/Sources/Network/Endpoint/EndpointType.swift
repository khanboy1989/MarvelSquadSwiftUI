//
//  EndpointType.swift
//
//
//  Created by Serhan Khan on 02.01.24.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

public enum BodyParameter {
    case data(Data)
    case dictionary([String: Any], options: JSONSerialization.WritingOptions = [])
    case encodable(Encodable, encoder: JSONEncoder = .init())
}

// Endpoint type protocol
// Inherit this to create endpoint params for request
public protocol EndpointType {
    var baseUrl: URL? { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var urlQueries: [String: String]? { get }
    var headers: [String: String]? { get }
    var bodyParameters: BodyParameter? { get }
}

// Struct for creating the APIEndpoint Models, inherits the EndpointType (protocol)
public struct APIEndpoint: EndpointType {
    public let baseUrl: URL?
    public let path: String
    public let httpMethod: HTTPMethod
    public let urlQueries: [String: String]?
    public let headers: [String: String]?
    public let bodyParameters: BodyParameter?
    public init(baseUrl: URL? = nil,
                path: String,
                httpMethod: HTTPMethod,
                urlQueries: [String: String]? = nil,
                headers: [String: String]? = nil,
                bodyParameters: BodyParameter? = nil) {
        self.baseUrl = baseUrl
        self.path = path
        self.httpMethod = httpMethod
        self.urlQueries = urlQueries
        self.headers = headers
        self.bodyParameters = bodyParameters
    }
}
