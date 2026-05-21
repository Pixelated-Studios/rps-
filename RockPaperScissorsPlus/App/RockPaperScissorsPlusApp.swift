// RockPaperScissorsPlusApp.swift
import SwiftUI

@main
struct RockPaperScissorsPlusApp: App {
    @StateObject private var streakManager = StreakManager()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MainMenuView()
            }
            .environmentObject(streakManager)
        }
    }
}
