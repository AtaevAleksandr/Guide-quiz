//
//  NotificationsView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            ZStack {
                phone
                notifications
            }

            Text("Don't miss out on new update")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.top, -90)

            Spacer()
        }
        .padding(.top, 120)
        .clipped()
    }
}

//MARK: COMPONENTS
extension NotificationsView {
    private var phone: some View {
        Image(.iPhone)
            .resizable()
            .scaledToFit()
            .padding(.horizontal, 60)
    }

    private var notifications: some View {
        Image(.notification)
            .resizable()
            .scaledToFit()
            .offset(y: -80)
            .padding(.horizontal)
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView()
        NotificationsView()
    }
}
