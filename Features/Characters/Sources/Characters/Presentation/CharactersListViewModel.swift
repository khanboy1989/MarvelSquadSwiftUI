//
//  File.swift
//
//
//  Created by Serhan Khan on 27/01/2024.
//

import Domain
import DomainData
import Foundation

final class CharactersListViewModel: ObservableObject {
    private let repository: ICharacterRepository
    private let publicKey: String
    private let privateKey: String
    @Published var heros: [Hero] = []
    @Published var showError: Bool = false
    struct Dependecies {
        let publicKey: String
        let privateKey: String
        let characterRepository: ICharacterRepository
    }
    init(dependencies: Dependecies) {
        self.repository = dependencies.characterRepository
        self.privateKey = dependencies.privateKey
        self.publicKey = dependencies.publicKey
    }
    enum State {
        case loading, display(data: [Hero])
    }
    @Published
    var state: State = .loading
    @MainActor
    func fetch(limit: Int, offSet: Int) async {
        let timeStamp = Date().timeIntervalSince1970
        let hash = "\(timeStamp)\(privateKey)\(publicKey)"
        state = .loading
        do {
            let heros =  try await self.repository.fetchCharacters(limit: limit,
                                                   offset: offSet,
                                                   apiKey: publicKey,
                                                   timeStamp: timeStamp,
                                                   hash: hash)
            state = .display(data: heros)
        } catch {
           print("fetch error = \(error)")
           self.showError = true
        }
    }
}
