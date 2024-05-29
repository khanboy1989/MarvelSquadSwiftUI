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
}
