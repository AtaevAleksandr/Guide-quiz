//
//  SignalRowView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 23.02.2024.
//

import SwiftUI

struct SignalRowView: View {

    let signal: SignalModel

    var body: some View {
        HStack {
            Image(signal.iconImage)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)

            Text(signal.name)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)

            Spacer()

            Text(signal.currentTime)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)

            Spacer()

            HStack {
                Text(LocalizedStringKey(signal.arrowStatus.displayText))
                    .font(.system(size: 11, weight: .medium))
                    .foregroundStyle(.white)

                Image(systemName: signal.arrowStatus.arrowName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 11, height: 11)
                    .foregroundStyle(.white)
            }
            .padding(5)
            .background(signal.arrowStatus.backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(Color.theme.backgroundComponents)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    SignalRowView(signal: SignalModel(iconImage: "AUD:USD", name: "AUD/USD", arrowStatus: .randomStatus(), currentTime: "23:43"))
        .environmentObject(SignalViewModel())
}

