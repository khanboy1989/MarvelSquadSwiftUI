//
//  ContentView.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(Asset.Colors.red.swiftUIColor)
            Text(L10n.squadButtonFireText)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
