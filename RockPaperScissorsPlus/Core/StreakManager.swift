// StreakManager.swift
import Foundation
import Combine

final class StreakManager: ObservableObject {
    @Published private(set) var currentStreak: Int {
        didSet { save() }
    }
    @Published private(set) var bestStreak: Int {
        didSet { save() }
    }

    private let defaults = UserDefaults.standard
    private let currentKey = "streakManager_current"
    private let bestKey = "streakManager_best"

    init() {
        self.currentStreak = defaults.integer(forKey: currentKey)
        self.bestStreak = defaults.integer(forKey: bestKey)
    }

    func increment() {
        currentStreak += 1
        if currentStreak > bestStreak { bestStreak = currentStreak }
    }

    func reset() {
        currentStreak = 0
    }

    private func save() {
        defaults.set(currentStreak, forKey: currentKey)
        defaults.set(bestStreak, forKey: bestKey)
    }
}
