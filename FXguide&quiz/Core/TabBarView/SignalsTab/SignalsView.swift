//
//  SignalsView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct SignalsView: View {

    @EnvironmentObject private var viewModel: SignalViewModel

    var body: some View {
        NavigationView {
            ZStack {
                OnboardingBackgroundView()

                GeometryReader { geo in
                    ScrollView(showsIndicators: false) {
                        VStack {
                            Text("The next signals is via:")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundStyle(Color.theme.customGray)

                            Text("\(viewModel.remainTime)")
                                .font(.system(size: 32, weight: .bold))
                                .foregroundStyle(.white)
                                .padding(10)
                                .background(Color.theme.backgroundComponents)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        .frame(height: geo.size.height / 5)

                        ForEach(viewModel.randomSignals) { signal in
                            SignalRowView(signal: signal)
                        }
                    }
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension SignalsView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Signals")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    SignalsView()
        .environmentObject(SignalViewModel())
}
