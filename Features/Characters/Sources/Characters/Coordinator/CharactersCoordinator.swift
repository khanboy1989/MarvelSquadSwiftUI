//
//  File.swift
//  
//
//  Created by Serhan Khan on 27/01/2024.
//

import Foundation
import SwiftUI
import Router
import Network
import Domain
import DomainData

public struct CharactersCoordinator: View {
    
    @EnvironmentObject private var router: Router
    
    public var body: some View {
        Text("Hello, World!")
    }
}

public extension CharactersCoordinator {
    struct Dependencies {
        let apiClient: IAPIClientService
        public init(apiClient: IAPIClientService) {
            self.apiClient = apiClient
        }
    }
}
