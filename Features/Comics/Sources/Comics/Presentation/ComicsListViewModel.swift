//
//  ComicsListViewModel.swift
//
//
//  Created by Serhan Khan on 29.05.24.
//

import Foundation
import Domain

final class ComicsListViewModel: ObservableObject {
    private let repository: IComicRepository
    private let publicKey: String
    private let privateKey: String
    @Published var heros: [Comic] = []
    @Published var showError: Bool = false
    struct Dependecies {
        let publicKey: String
        let privateKey: String
        let comicRepository: IComicRepository
    }
    init(dependecies: Dependecies) {
        self.repository = dependecies.comicRepository
        self.privateKey = dependecies.privateKey
        self.publicKey = dependecies.publicKey
    }
    enum State: Equatable {
        case loading, display(data: [Comic])
    }
    @Published
    var state: State = .loading
    @MainActor
    func fetch(limit: Int, offset: Int) async {
        let timeStamp = Date().timeIntervalSince1970
        let hash = "\(timeStamp)\(privateKey)\(publicKey)"
        state = .loading
        do {
            let comics = try await self.repository.fetchComics(limit: limit, offset: offset, apiKey: publicKey, timeStamp: timeStamp, hash: hash)
            state = .display(data: comics)
        } catch {
            print("error = \(error)")
            self.showError = true
        }
    }
}
