// MainMenuView.swift
import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.themeBackgroundStart, Color.themeBackgroundEnd]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                NavigationLink(destination: PlayView()) {
                    GlassButton(title: "play") {}
                }
                NavigationLink(destination: MultiplayerView()) {
                    GlassButton(title: "multiplayer") {}
                }
                NavigationLink(destination: LeaderboardView()) {
                    GlassButton(title: "leaderboard") {}
                }
                NavigationLink(destination: SettingsView()) {
                    GlassButton(title: "settings") {}
                }
                NavigationLink(destination: FriendsView()) {
                    GlassButton(title: "friends") {}
                }
                NavigationLink(destination: ProfileView()) {
                    GlassButton(title: "profile") {}
                }
            }
            .padding()
        }
    }
}
