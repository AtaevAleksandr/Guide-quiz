//
//  DemoRateAppView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct DemoRateAppView: View {
    var body: some View {
        VStack {
            Text("Help us to improve the app")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)

            Spacer()

            Text("Other users about us")
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(Color.theme.customGray)

            Image(.demoUserRate)
                .resizable()
                .scaledToFit()
                .padding(.top, 20)

            Spacer()
        }
        .clipped()
        .padding()
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView()
        DemoRateAppView()
    }
}
