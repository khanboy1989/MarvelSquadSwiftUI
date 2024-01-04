// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit.NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "FontConvertible.Font", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias Font = FontConvertible.Font

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
internal enum FontFamily {
  internal enum SFPro {
    internal static let black = FontConvertible(name: "SFPro-Black", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let blackItalic = FontConvertible(name: "SFPro-BlackItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let bold = FontConvertible(name: "SFPro-Bold", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let boldItalic = FontConvertible(name: "SFPro-BoldItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let heavy = FontConvertible(name: "SFPro-Heavy", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let heavyItalic = FontConvertible(name: "SFPro-HeavyItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let light = FontConvertible(name: "SFPro-Light", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let lightItalic = FontConvertible(name: "SFPro-LightItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let medium = FontConvertible(name: "SFPro-Medium", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let mediumItalic = FontConvertible(name: "SFPro-MediumItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let regular = FontConvertible(name: "SFPro-Regular", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let regularItalic = FontConvertible(name: "SFPro-RegularItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let semibold = FontConvertible(name: "SFPro-Semibold", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let semiboldItalic = FontConvertible(name: "SFPro-SemiboldItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let thin = FontConvertible(name: "SFPro-Thin", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let thinItalic = FontConvertible(name: "SFPro-ThinItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let ultralight = FontConvertible(name: "SFPro-Ultralight", family: "SF Pro", path: "SF-Pro.ttf")
    internal static let ultralightItalic = FontConvertible(name: "SFPro-UltralightItalic", family: "SF Pro", path: "SF-Pro-Italic.ttf")
    internal static let all: [FontConvertible] = [black, blackItalic, bold, boldItalic, heavy, heavyItalic, light, lightItalic, medium, mediumItalic, regular, regularItalic, semibold, semiboldItalic, thin, thinItalic, ultralight, ultralightItalic]
  }
  internal enum SFProDisplay {
    internal static let black = FontConvertible(name: "SFProDisplay-Black", family: "SF Pro Display", path: "SF-Pro-Display-Black.otf")
    internal static let blackItalic = FontConvertible(name: "SFProDisplay-BlackItalic", family: "SF Pro Display", path: "SF-Pro-Display-BlackItalic.otf")
    internal static let bold = FontConvertible(name: "SFProDisplay-Bold", family: "SF Pro Display", path: "SF-Pro-Display-Bold.otf")
    internal static let boldItalic = FontConvertible(name: "SFProDisplay-BoldItalic", family: "SF Pro Display", path: "SF-Pro-Display-BoldItalic.otf")
    internal static let heavy = FontConvertible(name: "SFProDisplay-Heavy", family: "SF Pro Display", path: "SF-Pro-Display-Heavy.otf")
    internal static let heavyItalic = FontConvertible(name: "SFProDisplay-HeavyItalic", family: "SF Pro Display", path: "SF-Pro-Display-HeavyItalic.otf")
    internal static let light = FontConvertible(name: "SFProDisplay-Light", family: "SF Pro Display", path: "SF-Pro-Display-Light.otf")
    internal static let lightItalic = FontConvertible(name: "SFProDisplay-LightItalic", family: "SF Pro Display", path: "SF-Pro-Display-LightItalic.otf")
    internal static let medium = FontConvertible(name: "SFProDisplay-Medium", family: "SF Pro Display", path: "SF-Pro-Display-Medium.otf")
    internal static let mediumItalic = FontConvertible(name: "SFProDisplay-MediumItalic", family: "SF Pro Display", path: "SF-Pro-Display-MediumItalic.otf")
    internal static let regular = FontConvertible(name: "SFProDisplay-Regular", family: "SF Pro Display", path: "SF-Pro-Display-Regular.otf")
    internal static let regularItalic = FontConvertible(name: "SFProDisplay-RegularItalic", family: "SF Pro Display", path: "SF-Pro-Display-RegularItalic.otf")
    internal static let semibold = FontConvertible(name: "SFProDisplay-Semibold", family: "SF Pro Display", path: "SF-Pro-Display-Semibold.otf")
    internal static let semiboldItalic = FontConvertible(name: "SFProDisplay-SemiboldItalic", family: "SF Pro Display", path: "SF-Pro-Display-SemiboldItalic.otf")
    internal static let thin = FontConvertible(name: "SFProDisplay-Thin", family: "SF Pro Display", path: "SF-Pro-Display-Thin.otf")
    internal static let thinItalic = FontConvertible(name: "SFProDisplay-ThinItalic", family: "SF Pro Display", path: "SF-Pro-Display-ThinItalic.otf")
    internal static let ultralight = FontConvertible(name: "SFProDisplay-Ultralight", family: "SF Pro Display", path: "SF-Pro-Display-Ultralight.otf")
    internal static let ultralightItalic = FontConvertible(name: "SFProDisplay-UltralightItalic", family: "SF Pro Display", path: "SF-Pro-Display-UltralightItalic.otf")
    internal static let all: [FontConvertible] = [black, blackItalic, bold, boldItalic, heavy, heavyItalic, light, lightItalic, medium, mediumItalic, regular, regularItalic, semibold, semiboldItalic, thin, thinItalic, ultralight, ultralightItalic]
  }
  internal enum SFProRounded {
    internal static let black = FontConvertible(name: "SFProRounded-Black", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Black.otf")
    internal static let bold = FontConvertible(name: "SFProRounded-Bold", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Bold.otf")
    internal static let heavy = FontConvertible(name: "SFProRounded-Heavy", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Heavy.otf")
    internal static let light = FontConvertible(name: "SFProRounded-Light", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Light.otf")
    internal static let medium = FontConvertible(name: "SFProRounded-Medium", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Medium.otf")
    internal static let regular = FontConvertible(name: "SFProRounded-Regular", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Regular.otf")
    internal static let semibold = FontConvertible(name: "SFProRounded-Semibold", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Semibold.otf")
    internal static let thin = FontConvertible(name: "SFProRounded-Thin", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Thin.otf")
    internal static let ultralight = FontConvertible(name: "SFProRounded-Ultralight", family: "SF Pro Rounded", path: "SF-Pro-Rounded-Ultralight.otf")
    internal static let all: [FontConvertible] = [black, bold, heavy, light, medium, regular, semibold, thin, ultralight]
  }
  internal enum SFProText {
    internal static let black = FontConvertible(name: "SFProText-Black", family: "SF Pro Text", path: "SF-Pro-Text-Black.otf")
    internal static let blackItalic = FontConvertible(name: "SFProText-BlackItalic", family: "SF Pro Text", path: "SF-Pro-Text-BlackItalic.otf")
    internal static let bold = FontConvertible(name: "SFProText-Bold", family: "SF Pro Text", path: "SF-Pro-Text-Bold.otf")
    internal static let boldItalic = FontConvertible(name: "SFProText-BoldItalic", family: "SF Pro Text", path: "SF-Pro-Text-BoldItalic.otf")
    internal static let heavy = FontConvertible(name: "SFProText-Heavy", family: "SF Pro Text", path: "SF-Pro-Text-Heavy.otf")
    internal static let heavyItalic = FontConvertible(name: "SFProText-HeavyItalic", family: "SF Pro Text", path: "SF-Pro-Text-HeavyItalic.otf")
    internal static let light = FontConvertible(name: "SFProText-Light", family: "SF Pro Text", path: "SF-Pro-Text-Light.otf")
    internal static let lightItalic = FontConvertible(name: "SFProText-LightItalic", family: "SF Pro Text", path: "SF-Pro-Text-LightItalic.otf")
    internal static let medium = FontConvertible(name: "SFProText-Medium", family: "SF Pro Text", path: "SF-Pro-Text-Medium.otf")
    internal static let mediumItalic = FontConvertible(name: "SFProText-MediumItalic", family: "SF Pro Text", path: "SF-Pro-Text-MediumItalic.otf")
    internal static let regular = FontConvertible(name: "SFProText-Regular", family: "SF Pro Text", path: "SF-Pro-Text-Regular.otf")
    internal static let regularItalic = FontConvertible(name: "SFProText-RegularItalic", family: "SF Pro Text", path: "SF-Pro-Text-RegularItalic.otf")
    internal static let semibold = FontConvertible(name: "SFProText-Semibold", family: "SF Pro Text", path: "SF-Pro-Text-Semibold.otf")
    internal static let semiboldItalic = FontConvertible(name: "SFProText-SemiboldItalic", family: "SF Pro Text", path: "SF-Pro-Text-SemiboldItalic.otf")
    internal static let thin = FontConvertible(name: "SFProText-Thin", family: "SF Pro Text", path: "SF-Pro-Text-Thin.otf")
    internal static let thinItalic = FontConvertible(name: "SFProText-ThinItalic", family: "SF Pro Text", path: "SF-Pro-Text-ThinItalic.otf")
    internal static let ultralight = FontConvertible(name: "SFProText-Ultralight", family: "SF Pro Text", path: "SF-Pro-Text-Ultralight.otf")
    internal static let ultralightItalic = FontConvertible(name: "SFProText-UltralightItalic", family: "SF Pro Text", path: "SF-Pro-Text-UltralightItalic.otf")
    internal static let all: [FontConvertible] = [black, blackItalic, bold, boldItalic, heavy, heavyItalic, light, lightItalic, medium, mediumItalic, regular, regularItalic, semibold, semiboldItalic, thin, thinItalic, ultralight, ultralightItalic]
  }
  internal static let allCustomFonts: [FontConvertible] = [SFPro.all, SFProDisplay.all, SFProRounded.all, SFProText.all].flatMap { $0 }
  internal static func registerAllCustomFonts() {
    allCustomFonts.forEach { $0.register() }
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal struct FontConvertible {
  internal let name: String
  internal let family: String
  internal let path: String

  #if os(macOS)
  internal typealias Font = NSFont
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Font = UIFont
  #endif

  internal func font(size: CGFloat) -> Font {
    guard let font = Font(font: self, size: size) else {
      fatalError("Unable to initialize font '\(name)' (\(family))")
    }
    return font
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal func swiftUIFont(size: CGFloat) -> SwiftUI.Font {
    return SwiftUI.Font.custom(self, size: size)
  }

  @available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11.0, *)
  internal func swiftUIFont(fixedSize: CGFloat) -> SwiftUI.Font {
    return SwiftUI.Font.custom(self, fixedSize: fixedSize)
  }

  @available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11.0, *)
  internal func swiftUIFont(size: CGFloat, relativeTo textStyle: SwiftUI.Font.TextStyle) -> SwiftUI.Font {
    return SwiftUI.Font.custom(self, size: size, relativeTo: textStyle)
  }
  #endif

  internal func register() {
    // swiftlint:disable:next conditional_returns_on_newline
    guard let url = url else { return }
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }

  fileprivate func registerIfNeeded() {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if !UIFont.fontNames(forFamilyName: family).contains(name) {
      register()
    }
    #elseif os(macOS)
    if let url = url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      register()
    }
    #endif
  }

  fileprivate var url: URL? {
    // swiftlint:disable:next implicit_return
    return BundleToken.bundle.url(forResource: path, withExtension: nil)
  }
}

internal extension FontConvertible.Font {
  convenience init?(font: FontConvertible, size: CGFloat) {
    font.registerIfNeeded()
    self.init(name: font.name, size: size)
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Font {
  static func custom(_ font: FontConvertible, size: CGFloat) -> SwiftUI.Font {
    font.registerIfNeeded()
    return custom(font.name, size: size)
  }
}

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, macOS 11.0, *)
internal extension SwiftUI.Font {
  static func custom(_ font: FontConvertible, fixedSize: CGFloat) -> SwiftUI.Font {
    font.registerIfNeeded()
    return custom(font.name, fixedSize: fixedSize)
  }

  static func custom(
    _ font: FontConvertible,
    size: CGFloat,
    relativeTo textStyle: SwiftUI.Font.TextStyle
  ) -> SwiftUI.Font {
    font.registerIfNeeded()
    return custom(font.name, size: size, relativeTo: textStyle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
