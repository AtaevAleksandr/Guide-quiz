//
//  DemoStoriesView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct DemoStoriesView: View {
    var body: some View {
        VStack {
            Text("Watch stories every day!")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Text("Stories will help you keep up to date with all market events")
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(Color.theme.customGray)
                .multilineTextAlignment(.center)
                .padding(.top, 12)
                .padding(.horizontal)

            phone
                .padding(.top, 55)

            Spacer()
        }
        .clipped()
    }
}

//MARK: COMPONENTS
extension DemoStoriesView {
    private var phone: some View {
        Image(.demoStories)
            .resizable()
            .scaledToFit()
            .padding(.horizontal, 20)
            .padding(.top, 20)
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView()
        DemoStoriesView()
    }
}
