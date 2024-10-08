//
//  PushNotificationView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct PushNotificationView: View {

    @Binding var showView: Bool

    var body: some View {
        ZStack {
            OnboardingBackgroundView()

            VStack {
                Spacer()

                Image(.pushNow)
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, -100)
                    .padding(.horizontal)
                    .padding(.top, 80)

                VStack(spacing: 5) {
                    Text("Don't miss your chance to make money!")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)

                    Text("Turn on push notifications for more efficient use of push notifications")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundStyle(Color.theme.customGray)
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal)

                Spacer()
                bottomButton
            }
        }
    }

    private func openNotificationSettings() {
        if let url = URL(string: UIApplication.openSettingsURLString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

//MARK: COMPONENTS
extension PushNotificationView {
    private var bottomButton: some View {
        Button {
            openNotificationSettings()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                showView.toggle()
            }
        } label: {
            Text("Next")
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.black)
                .frame(height: 53)
                .frame(maxWidth: .infinity)
                .background(Color.theme.customGreen)
                .cornerRadius(12)
                .animation(nil, value: UUID())
                .padding()
        }
    }
}

#Preview {
    PushNotificationView(showView: .constant(false))
}
