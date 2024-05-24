//
//  CharactersListView.swift
//  
//
//  Created by Serhan Khan on 27/01/2024.
//

import Foundation

import SwiftUI
import CommonUI
import Router
import Domain
import SystemDesign

public struct CharactersListView: View {
    @EnvironmentObject private var router: Router
    @StateObject private var viewModel: CharactersListViewModel
    init(dependecies: CharactersListViewModel.Dependecies) {
        _viewModel = .init(wrappedValue: CharactersListViewModel(dependencies: dependecies))
    }

    public var body: some View {
        VStack {
            Text("Hello, World Serhan Khan \(L10n.systemLanguage)")
        }.task {
            await viewModel.fetch(limit: 10, offSet: 0)
        }
    }
}
