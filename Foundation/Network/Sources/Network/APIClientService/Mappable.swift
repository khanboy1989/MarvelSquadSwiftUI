//
//  Mappable.swift
//
//
//  Created by Serhan Khan on 04/01/2024.
//

import Foundation

//Mappable protocol for mapping from Data to Model
public protocol Mappable {
    associatedtype Input: Decodable
    associatedtype Output
    
    func map(_ input: Input) throws -> Output
}
