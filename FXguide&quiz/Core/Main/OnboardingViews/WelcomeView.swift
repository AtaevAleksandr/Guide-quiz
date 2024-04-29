//
//  WelcomeView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)

            Text("Our application will introduce you to the market, suitable for both beginners and experienced traders")
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(Color.theme.customGray)
                .multilineTextAlignment(.center)
                .padding(.top, 12)

            Spacer()

            Image(.chart)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .padding(.horizontal)

            Spacer()

            Text("Let's introduce you to the functionality, you will like it!")
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(Color.theme.customGray)
                .multilineTextAlignment(.center)

            Spacer()
        }
        .padding(.horizontal)
        .clipped()
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView()
        WelcomeView()
    }
}
