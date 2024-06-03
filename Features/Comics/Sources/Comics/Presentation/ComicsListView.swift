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
        VStack {
            Text("ComicsListView")
        }.task {
            await viewModel.fetch(limit: 10, offset: 0)
        }.navigationTitle("Comics")
    }
}
