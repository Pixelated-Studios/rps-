// Colors.swift
import SwiftUI

struct ColorPalette {
    static let backgroundStart = Color(red: 0.05, green: 0.05, blue: 0.1)
    static let backgroundEnd   = Color(red: 0.08, green: 0.03, blue: 0.15)
    static let neonCyan        = Color(red: 0.0, green: 0.9, blue: 0.9)
    static let neonPurple      = Color(red: 0.8, green: 0.4, blue: 1.0)
    static let neonBlue        = Color(red: 0.4, green: 0.6, blue: 1.0)
}

extension Color {
    static var themeBackgroundStart: Color { ColorPalette.backgroundStart }
    static var themeBackgroundEnd: Color { ColorPalette.backgroundEnd }
    static var neonCyan: Color { ColorPalette.neonCyan }
    static var neonPurple: Color { ColorPalette.neonPurple }
    static var neonBlue: Color { ColorPalette.neonBlue }
}
