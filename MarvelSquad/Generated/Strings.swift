// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// Error
  internal static let error = L10n.tr("Localizable", "error", fallback: "Error")
  /// Please check your internet connection and try again!
  internal static let internetError = L10n.tr("Localizable", "internetError", fallback: "Please check your internet connection and try again!")
  /// My Squad
  internal static let mySquadTitle = L10n.tr("Localizable", "mySquadTitle", fallback: "My Squad")
  /// Refresh
  internal static let refresh = L10n.tr("Localizable", "refresh", fallback: "Refresh")
  /// 🔥 Fire from Squad
  internal static let squadButtonFireText = L10n.tr("Localizable", "squadButtonFireText", fallback: "🔥 Fire from Squad")
  /// Localizable.strings
  ///   MarvelSquad
  /// 
  ///   Created by Serhan Khan on 04/01/2024.
  internal static let squadButtonRecruitText = L10n.tr("Localizable", "squadButtonRecruitText", fallback: "💪 Recruit to Squad")
  /// Unknown error occured.
  internal static let unknownError = L10n.tr("Localizable", "unknownError", fallback: "Unknown error occured.")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

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
