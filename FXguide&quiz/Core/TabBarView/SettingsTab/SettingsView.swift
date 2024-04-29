//
//  SettingsView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                OnboardingBackgroundView()

                VStack(spacing: 12) {
                    VStack {
                        SettingsButtonView(title: "Privacy Policy") {
                            openPrivacyLink()
                        }
                        SettingsButtonView(title: "Support") {
                            openSupportLink()
                        }
                    }
                    .padding()
                    .background(Color.theme.backgroundComponents)
                    .clipShape(RoundedRectangle(cornerRadius: 8))

                    Spacer()
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }

    //MARK: FUNCTIONS
    func openPrivacyLink() {
        let urlString = "https://www.google.com"
        if let url = URL(string: urlString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    func openSupportLink() {
        let urlString = "https://www.ya.ru"
        if let url = URL(string: urlString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

//MARK: EXTENSION
extension SettingsView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Settings")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    SettingsView()
}
