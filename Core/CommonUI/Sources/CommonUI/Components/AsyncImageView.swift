//
//  AsyncImageView.swift
//
//
//  Created by Serhan Khan on 24/05/2024.
//

import SwiftUI

public struct AsyncImageView: View {
    private let imageUrl: String
    private let placeHolder: String
    private let colorScheme: ColorScheme
    private let height: CGFloat
    private let width: CGFloat
    private let shouldShowLoading: Bool
    private let cornerRadius: CGFloat
    public init(imageUrl: String,
                placeHolder: String,
                height: CGFloat,
                width: CGFloat,
                cornerRadius: CGFloat,
                colorScheme: ColorScheme = .light,
                shouldShowLoading: Bool = false) {
        self.imageUrl = imageUrl
        self.placeHolder = placeHolder
        self.colorScheme = colorScheme
        self.width = width
        self.height = height
        self.shouldShowLoading = shouldShowLoading
        self.cornerRadius = cornerRadius
    }
    public var body: some View {
        AsyncImage(url: URL(string: imageUrl), content: { phase in
            switch phase {
            case .empty:
                switch shouldShowLoading {
                case true:
                    ProgressView()
                        .colorScheme(colorScheme)
                case false:
                    Image(systemName: placeHolder)
                        .resizable()
                        .colorScheme(colorScheme)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(cornerRadius)
                        .frame(width: width, height: height)
                        .padding()
                }
            case let .success(image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(cornerRadius)
                    .frame(width: width, height: height)
                    .padding()
            case .failure:
                Image(systemName: placeHolder)
                    .resizable()
                    .colorScheme(colorScheme)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(cornerRadius)
                    .frame(width: width, height: height)
                    .padding()
            @unknown default:
                EmptyView()
            }
        })
    }
}

