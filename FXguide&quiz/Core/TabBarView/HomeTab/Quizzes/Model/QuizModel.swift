//
//  QuizModel.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 04.03.2024.
//

import Foundation
import SwiftUI

struct QuizModel: Identifiable, Codable, Hashable {
    let id: Int
    let title: String
    var isComplete: Bool
    var isActive: Bool

    var backgroundColor: Color {
        if isComplete {
            return Color.theme.customGreen
        } else if isActive {
            return Color.theme.customGreen
        } else {
            return Color.theme.customGreen.opacity(0.5)
        }
    }

    static var quizzes: [QuizModel] = [
        QuizModel(id: 1, title: "What Is Forex Trading?", isComplete: false, isActive: true),
        QuizModel(id: 2, title: "Why Do Currency Rates Change?", isComplete: false, isActive: false),
        QuizModel(id: 3, title: "Why Trade Forex?", isComplete: false, isActive: false),
        QuizModel(id: 4, title: "Word of Warning to Forex Traders", isComplete: false, isActive: false),
        QuizModel(id: 5, title: "Detailed View on Currency Pairs", isComplete: false, isActive: false),
        QuizModel(id: 6, title: "Forex Market Structure", isComplete: false, isActive: false),
        QuizModel(id: 7, title: "Trading Sessions", isComplete: false, isActive: false),
        QuizModel(id: 8, title: "How Is Money Made in Forex?", isComplete: false, isActive: false),
        QuizModel(id: 9, title: "Pips", isComplete: false, isActive: false),
        QuizModel(id: 10, title: "Lots", isComplete: false, isActive: false),
        QuizModel(id: 11, title: "Margin and Leverage", isComplete: false, isActive: false),
        QuizModel(id: 12, title: "Trading Orders", isComplete: false, isActive: false),
        QuizModel(id: 13, title: "Demo Trading", isComplete: false, isActive: false)
    ]
}
