//
//  FXguide_quizApp.swift
//  FXguide&quiz
//
//  Created by Aleksandr Ataev on 24.04.2024.
//

import SwiftUI

@main
struct FXguide_quizApp: App {

    @StateObject private var signalVM = SignalViewModel()
    @StateObject private var storyVM = StoryViewModel()
    @StateObject private var homeVM = HomeViewModel()

    var body: some Scene {
        WindowGroup {
            LoadingView()
                .preferredColorScheme(.dark)
                .environmentObject(signalVM)
                .environmentObject(storyVM)
                .environmentObject(homeVM)
        }
    }
}
