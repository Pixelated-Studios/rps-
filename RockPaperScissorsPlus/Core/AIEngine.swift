// AIEngine.swift
import Foundation

enum Move: String, CaseIterable {
    case rock, paper, scissors
}

struct AIEngine {
    static func randomMove() -> Move {
        Move.allCases.randomElement()!
    }
}
