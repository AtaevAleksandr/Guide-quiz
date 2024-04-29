//
//  OnboardingBackgroundView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct OnboardingBackgroundView: View {
    var body: some View {
        Color.theme.background
            .ignoresSafeArea()
    }
}

#Preview {
    OnboardingBackgroundView()
}
