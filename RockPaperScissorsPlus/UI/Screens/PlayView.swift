// PlayView.swift
import SwiftUI
import UIKit

struct PlayView: View {
    @EnvironmentObject private var streakManager: StreakManager
    @State private var showResult = false
    @State private var resultMessage = ""
    @State private var currentResult: GameResult?

    private let gameManager = GameManager()

    var body: some View {
        VStack(spacing: 20) {
            GlassCard {
                Text("choose your move")
                    .font(.title2)
                    .foregroundColor(.primary)
            }
            HStack(spacing: 16) {
                GlassButton(title: "rock") { handleSelection(.rock) }
                GlassButton(title: "paper") { handleSelection(.paper) }
                GlassButton(title: "scissors") { handleSelection(.scissors) }
            }
        }
        .navigationTitle("play")
        .alert(isPresented: $showResult) {
            Alert(title: Text(resultMessage),
                  primaryButton: .default(Text("ok")) {
                      // reset for next round
                      showResult = false
                  },
                  secondaryButton: .cancel())
        }
    }

    private func handleSelection(_ playerMove: Move) {
        // haptic feedback
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()

        let aiMove = AIEngine.randomMove()
        let outcome = gameManager.evaluate(player: playerMove, ai: aiMove)
        currentResult = outcome
        switch outcome.outcome {
        case .win:
            streakManager.increment()
            resultMessage = "you win! (you: \(playerMove.rawValue), ai: \(aiMove.rawValue))"
        case .loss:
            streakManager.reset()
            resultMessage = "you lose (you: \(playerMove.rawValue), ai: \(aiMove.rawValue))"
        case .tie:
            resultMessage = "tie (you: \(playerMove.rawValue), ai: \(aiMove.rawValue))"
        }
        showResult = true
    }
}

