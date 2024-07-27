//
//  NavigationBarColor.swift
//
//
//  Created by Serhan Khan on 27/07/2024.
//

import SwiftUI

public struct NavigationBarColor: ViewModifier {
    var backgroundColor: UIColor
    var titleColor: UIColor

    init(backgroundColor: UIColor, titleColor: UIColor) {
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = backgroundColor
        coloredAppearance.titleTextAttributes = [.foregroundColor: titleColor]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    public func body(content: Content) -> some View {
        content
    }
}

public extension View {
    func navigationBarColor(backgroundColor: UIColor, titleColor: UIColor) -> some View {
        self.modifier(NavigationBarColor(backgroundColor: backgroundColor, titleColor: titleColor))
    }
}
