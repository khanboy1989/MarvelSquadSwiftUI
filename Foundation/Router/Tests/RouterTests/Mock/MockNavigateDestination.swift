//
//  MockNavigateDestination.swift
//
//
//  Created by Serhan Khan on 18/06/2024.
//

import Foundation

public enum MockNavigateDestination: Hashable {
    case navigateOne
    case navigateTwo
}

enum MockPresenter: Identifiable {
    var id: String {
        switch self {
        case .showError:
            return "showError"
        }
    }
    case showError
}
