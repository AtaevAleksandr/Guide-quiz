//
//  SignalViewModel.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 23.02.2024.
//

import Foundation
import UIKit

final class SignalViewModel: ObservableObject {

    @Published var randomSignals: [SignalModel] = []
    @Published var remainTime: String = ""

    private var timerFromBack: Timer?
    private var updateTime: Date = Date()
    let notifCenter = NotificationCenter.default

    init() {
        generateRandomSignals()
        createTimer()

        notifCenter.addObserver(self, selector: #selector(movedToBack), name: UIApplication.willResignActiveNotification, object: nil)
        notifCenter.addObserver(self, selector: #selector(movedToFore), name: UIApplication.willEnterForegroundNotification, object: nil)

//        if let savedSignalsData = UserDefaults.standard.data(forKey: "signals") {
//            if let savedSignals = try? JSONDecoder().decode([SignalModel].self, from: savedSignalsData) {
//                self.randomSignals = savedSignals
//                return
//            }
//        }
    }

    @objc func movedToBack() {
        UserDefaults.standard.setValue(updateTime, forKey: "updateTime")
//        saveSignals()
    }

    @objc func movedToFore() {
        if let data = UserDefaults.standard.value(forKey: "updateTime") as? Date {
            if data >= Date.now {
                updateTime = data
                goToTimerFromBack()
//                saveSignals()
            }
        }
    }

    private func createTimer() {
        let calendar = Calendar.current
        updateTime = calendar.date(byAdding: .minute, value: 720, to: Date()) ?? Date()

        let timer = Timer(timeInterval: 1, repeats: true) { timer in
            self.remainTime = self.updateTimeRemaining()
            if self.remainTime == "00:00" {
                self.generateRandomSignals()
                self.updateTime = calendar.date(byAdding: .minute, value: 720, to: Date()) ?? Date()
            }
        }
        RunLoop.main.add(timer, forMode: .common)
    }

    func goToTimerFromBack() {
        createTimerFromBackground()
    }

    func createTimerFromBackground() {
        timerFromBack = Timer(timeInterval: 1, repeats: true) { timer in
            self.remainTime = self.updateTimeRemaining()
            if self.remainTime == "00:00" {
                self.createTimer()
            }
        }
        if let timer = timerFromBack {
            RunLoop.main.add(timer, forMode: .common)
        }
    }

    private func updateTimeRemaining() -> String {
        let currentTime = Date()
        let calendar = Calendar.current

        let remaining = calendar.dateComponents([.hour, .minute], from: currentTime, to: updateTime)
        if let hour = remaining.hour, let minute = remaining.minute {
            return String(format: "%02d:%02d", max(0, hour), max(0, minute))
        }

        return ""
    }

    //MARK: GENERATE DATA
    func generateRandomSignals() {
        var signalsData: [SignalModel] = SignalModel.signals

        signalsData.shuffle()

        let randomData: [SignalModel] = Array(signalsData.prefix(Int.random(in: 4...6))).enumerated().map { index, originalSignal in
            var randomSignalModel = originalSignal
            let date = Date().addingTimeInterval(TimeInterval(index * 87 * 98))
            randomSignalModel.currentTime = getTimeFromDate(date)
            return randomSignalModel
        }

        self.randomSignals = randomData.shuffled()
        objectWillChange.send()
    }

    private func getTimeFromDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }

//    private func saveSignals() {
//        if let encodedData = try? JSONEncoder().encode(randomSignals) {
//            UserDefaults.standard.set(encodedData, forKey: "signals")
//        }
//    }
}
