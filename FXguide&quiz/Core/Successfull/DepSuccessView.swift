//
//  DepSuccessView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct DepSuccessView: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            OnboardingBackgroundView()

            VStack {
                Spacer()

                Image(.depComplete)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 77, height: 77)

                Text("Your first deposit was successful")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 26)
                    .padding(.horizontal)

                Spacer()
                bottomButton
            }
        }
    }
}

//MARK: COMPONENTS
extension DepSuccessView {
    private var bottomButton: some View {
        Button {
            dismiss()
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
    DepSuccessView()
}
