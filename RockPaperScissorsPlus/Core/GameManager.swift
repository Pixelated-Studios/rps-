// GameManager.swift
import Foundation

struct GameResult {
    let playerMove: Move
    let aiMove: Move
    let outcome: Outcome
    enum Outcome { case win, loss, tie }
}

final class GameManager {
    func evaluate(player: Move, ai: Move) -> GameResult {
        let outcome: GameResult.Outcome
        if player == ai {
            outcome = .tie
        } else if (player == .rock && ai == .scissors) ||
                  (player == .paper && ai == .rock) ||
                  (player == .scissors && ai == .paper) {
            outcome = .win
        } else {
            outcome = .loss
        }
        return GameResult(playerMove: player, aiMove: ai, outcome: outcome)
    }
}
