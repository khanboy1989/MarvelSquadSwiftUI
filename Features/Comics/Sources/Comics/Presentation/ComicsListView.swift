//
//  ComicsListView.swift
//
//
//  Created by Serhan Khan on 29.05.24.
//

import SwiftUI
import CommonUI
import Router
import Domain
import SystemDesign

public struct ComicsListView: View {
    @EnvironmentObject private var router: Router
    @StateObject private var viewModel: ComicsListViewModel
    init(dependecies: ComicsListViewModel.Dependecies) {
        _viewModel = .init(wrappedValue: ComicsListViewModel(dependecies: dependecies))
    }
    public var body: some View {
        ZStack {
            switch viewModel.state {
            case .loading:
                ProgressView()
            case .display(let data):
                List(data, id: \.id) { character in
                    CharacterItemView(name: character.name, imageUrl: character.image)
                }
            }
        }.task {
            await viewModel.fetch(limit: 10, offset: 0)
        }.screenBackground(with: Asset.Colors.white.swiftUIColor)
        .navigationTitle(L10n.comicsTabTitle)
    }
}
