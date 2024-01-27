//
//  File.swift
//  
//
//  Created by Serhan Khan on 27/01/2024.
//

import Domain
import DomainData
import Foundation

@MainActor
final class CharactersListViewModel: ObservableObject {
    
    private let repository: ICharacterRepository
    
    struct Dependecies {
        let characterRepository: ICharacterRepository
    }
    
    init(dependencies: Dependecies) {
        self.repository = dependencies.characterRepository
    }
    
    private func fetch() async {
        
    }
}
