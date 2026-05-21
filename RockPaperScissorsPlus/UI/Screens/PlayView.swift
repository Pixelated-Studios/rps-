// PlayView.swift
import SwiftUI

struct PlayView: View {
    var body: some View {
        GlassCard {
            Text("play screen")
                .font(.title)
                .foregroundColor(.primary)
        }
        .navigationTitle("play")
    }
}
