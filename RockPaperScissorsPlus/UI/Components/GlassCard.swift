// GlassCard.swift
import SwiftUI

struct GlassCard<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        content
            .padding()
            .background(.thinMaterial)
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.1), radius: 6, x: 0, y: 3)
    }
}
