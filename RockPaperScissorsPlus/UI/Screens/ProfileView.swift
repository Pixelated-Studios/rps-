// ProfileView.swift
import SwiftUI

struct ProfileView: View {
    var body: some View {
        GlassCard {
            VStack(spacing: 12) {
                Text("profile placeholder")
                    .font(.title)
                // future: username, banner, best streak
            }
        }
        .navigationTitle("profile")
    }
}
