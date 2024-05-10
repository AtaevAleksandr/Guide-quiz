//
//  HomeViewModel.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 07.03.2024.
//

import Foundation
import UIKit

final class HomeViewModel: ObservableObject {

    enum ViewStates {
        case empty
        case timer
    }

    @Published var states: ViewStates = .empty
    @Published var remainTime: String = ""
    @Published var allQuizzes: [QuizModel]

    private var timerFromBack: Timer?
    private var nextUpdateTime: Date = Date()

    let notificationCenter = NotificationCenter.default

    init() {
        self.allQuizzes = QuizModel.quizzes

        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: UIApplication.willResignActiveNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(appMovedToForeground), name: UIApplication.willEnterForegroundNotification, object: nil)

        if let savedQuizzesData = UserDefaults.standard.data(forKey: "quizzes") {
            if let savedQuizzes = try? JSONDecoder().decode([QuizModel].self, from: savedQuizzesData) {
                self.allQuizzes = savedQuizzes
                return
            }
        }
    }

    @objc func appMovedToBackground() {
        UserDefaults.standard.setValue(nextUpdateTime, forKey: "Update")
    }

    @objc func appMovedToForeground() {
        if let data = UserDefaults.standard.value(forKey: "Update") as? Date {
            if data >= Date.now {
                nextUpdateTime = data
                goToTimerFromBack()
            } else {
                goToEmpty()
            }
        } else {
            goToEmpty()
        }
    }

    func createTimerFromBackground() {
        timerFromBack = Timer(timeInterval: 1, repeats: true) { timer in
            self.remainTime = self.updateTimeRemaining()
            if self.remainTime == "00:00" {
                timer.invalidate()
                self.goToEmpty()
            }
        }
        if let timer = timerFromBack {
            RunLoop.main.add(timer, forMode: .common)
        }
    }

    private func createTimer() {
        let calendar = Calendar.current
        nextUpdateTime = calendar.date(byAdding: .second, value: 900, to: Date()) ?? Date()

        let timer = Timer(timeInterval: 1, repeats: true) { timer in
            self.remainTime = self.updateTimeRemaining()
            if self.remainTime == "00:00" {
                timer.invalidate()
                self.goToEmpty()
            }
        }
        RunLoop.main.add(timer, forMode: .common)
    }

    private func updateTimeRemaining() -> String {
        let currentTime = Date()
        let calendar = Calendar.current

        let remaining = calendar.dateComponents([.minute, .second], from: currentTime, to: nextUpdateTime)
        if let minute = remaining.minute, let second = remaining.second {
            return String(format: "%02d:%02d", max(0, minute), max(0, second))
        }

        return ""
    }

    func goToTimer() {
        createTimer()
        states = .timer
    }

    func goToTimerFromBack() {
        createTimerFromBackground()
        states = .timer
    }

    func goToEmpty() {
        states = .empty
        startNextQuiz()
    }

    func quizCompleted(quizID: Int) {
        if let quizIndex = allQuizzes.firstIndex(where: { $0.id == quizID }) {
            allQuizzes[quizIndex].isComplete = true
            saveQuizzes()
        }
    }

    func startNextQuiz() {
        if let currentActiveIndex = allQuizzes.firstIndex(where: { $0.isActive }) {
            if let nextQuizIndex = allQuizzes[currentActiveIndex..<allQuizzes.endIndex].firstIndex(where: { !$0.isComplete }) {
                allQuizzes[nextQuizIndex].isActive = true
                saveQuizzes()
            }
        }
    }

    private func saveQuizzes() {
        if let encodedData = try? JSONEncoder().encode(allQuizzes) {
            UserDefaults.standard.set(encodedData, forKey: "quizzes")
        }
    }
}
