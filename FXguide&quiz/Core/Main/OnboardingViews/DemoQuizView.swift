//
//  DemoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct DemoQuizView: View {
    var body: some View {
        VStack {
            Text("A great opportunity")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)

            Spacer()

            Text("Get your unique experience now")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(Color.theme.customGray)

            Image(.demoQuiz)
                .resizable()
                .scaledToFit()
                .padding(.top, 20)

            Spacer()
        }
        .padding()
        .clipped()
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView()
        DemoQuizView()
    }
}
