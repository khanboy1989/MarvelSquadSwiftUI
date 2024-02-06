//
//  CharactersTabCoordinator.swift
//  MarvelSquad
//
//  Created by Serhan Khan on 05/02/2024.
//

import SwiftUI
import Router

struct CharactersTabCoordinator: View {
    @EnvironmentObject var configuration: Configuration
    @ObservedObject var router = Router()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CharactersTabCoordinator()
}
