//
//  FirstQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 04.03.2024.
//

import SwiftUI

struct FirstQuizGameView: View {

    @State var selectionOne: String?
    @State var selectionTwo: String?
    @State var selectionThree: String?
    @State var selectionFour: String?
    @State var selectionFive: String?
    @State var selectionSix: String?
    @State var selectionSeven: String?
    @State var selectionEight: String?

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false
    @State var isAnswerFourCorrect: Bool = false
    @State var isAnswerFiveCorrect: Bool = false
    @State var isAnswerSixCorrect: Bool = false
    @State var isAnswerSevenCorrect: Bool = false
    @State var isAnswerEightCorrect: Bool = false

    @Binding var isShowQuizGame: Bool

    @State var showAlert: Bool = false

    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    OnboardingBackgroundView()

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 20) {
                            //QUESTION 1
                            VStack(spacing: 10) {
                                Text("Spell out the exact words for which “Forex” is an abbreviation:")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionOne = "Foreign exchange"
                                    if selectionOne == "Foreign exchange" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Foreign exchange")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Foreign exchange" ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "FX"
                                    if selectionOne == "FX" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("FX")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "FX" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "Both foreign exchange and FX"
                                    if selectionOne == "Both foreign exchange and FX" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Both foreign exchange and FX")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "Both foreign exchange and FX" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 2
                            VStack(spacing: 10) {
                                Text("Before WWII, what was the most important currency in the world?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionTwo = "The Deutschmark"
                                    if selectionTwo == "The Deutschmark" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The Deutschmark")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "The Deutschmark" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "The Japanese yen"
                                    if selectionTwo == "The Japanese yen" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The Japanese yen")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "The Japanese yen" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "The US dollar"
                                    if selectionTwo == "The US dollar" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The US dollar")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "The US dollar" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "The UK pound"
                                    if selectionTwo == "The UK pound" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("The UK pound")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "The UK pound" ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 3
                            VStack(spacing: 10) {
                                Text("After WWII, what became the most important currency in the world?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionThree = "The Deutschmark"
                                    if selectionThree == "The Deutschmark" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The Deutschmark")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "The Deutschmark" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "The euro"
                                    if selectionThree == "The euro" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The euro")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "The euro" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionThree = "The US dollar"
                                    if selectionThree == "The US dollar" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("The US dollar")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThree == "The US dollar" ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 4
                            VStack(spacing: 10) {
                                Text("Why?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFour = "Europe is more important than the US."
                                    if selectionFour == "Europe is more important than the US." {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Europe is more important than the US.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "Europe is more important than the US." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFour = "The US has the biggest economy in the world."
                                    if selectionFour == "The US has the biggest economy in the world." {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("The US has the biggest economy in the world.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "The US has the biggest economy in the world." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFour = "The dollar was declared the world’s reserve currency."
                                    if selectionFour == "The dollar was declared the world’s reserve currency." {
                                        isAnswerFourCorrect = true
                                    }

                                } label: {
                                    HStack {
                                        Text("The dollar was declared the world’s reserve currency.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "The dollar was declared the world’s reserve currency." ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 5
                            VStack(spacing: 10) {
                                Text("Why did the founders of the European Monetary Union choose to put the euro first in the name of currency pairs?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFive = "The first name is the important name, and the second name is literally secondary."
                                    if selectionFive == "The first name is the important name, and the second name is literally secondary." {
                                        isAnswerFiveCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("The first name is the important name, and the second name is literally secondary.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "The first name is the important name, and the second name is literally secondary." ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFive = "They were drawing a line between the old quotation practice (dollar/Deutschemark) and the new era of the euro."
                                    if selectionFive == "They were drawing a line between the old quotation practice (dollar/Deutschemark) and the new era of the euro." {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("They were drawing a line between the old quotation practice (dollar/Deutschemark) and the new era of the euro.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "They were drawing a line between the old quotation practice (dollar/Deutschemark) and the new era of the euro." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFive = "They were trying to challenge the dominance of the dollar."
                                    if selectionFive == "They were trying to challenge the dominance of the dollar." {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("They were trying to challenge the dominance of the dollar.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "They were trying to challenge the dominance of the dollar." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 6
                            VStack(spacing: 10) {
                                Text("Why do we use the word “rate” instead of “price” in Forex?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionSix = "The word rate implies a ratio, and that is an accurate description of FX prices."
                                    if selectionSix == "The word rate implies a ratio, and that is an accurate description of FX prices." {
                                        isAnswerSixCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("The word rate implies a ratio, and that is an accurate description of FX prices.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSix == "The word rate implies a ratio, and that is an accurate description of FX prices." ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionSix = "Price is also an accurate word."
                                    if selectionSix == "Price is also an accurate word." {
                                        isAnswerSixCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Price is also an accurate word.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSix == "Price is also an accurate word." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 7
                            VStack(spacing: 10) {
                                Text("Why is buying foreign currency banknotes at an airport kiosk not “trading”?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionSeven = "Buying banknotes is a real physical activity, and trading refers only to notional amounts."
                                    if selectionSeven == "Buying banknotes is a real physical activity, and trading refers only to notional amounts." {
                                        isAnswerSevenCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Buying banknotes is a real physical activity, and trading refers only to notional amounts.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSeven == "Buying banknotes is a real physical activity, and trading refers only to notional amounts." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionSeven = "You cannot change the bid-offer but are always only a price-taker."
                                    if selectionSeven == "You cannot change the bid-offer but are always only a price-taker." {
                                        isAnswerSevenCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("You cannot change the bid-offer but are always only a price-taker.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionSeven == "You cannot change the bid-offer but are always only a price-taker." ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 8
                            VStack(spacing: 10) {
                                Text("Why is it incorrect English usage to say “I trade the Forex”?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionEight = "It is not incorrect — everyone understands it."
                                    if selectionEight == "It is not incorrect — everyone understands it." {
                                        isAnswerEightCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("It is not incorrect — everyone understands it.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionEight == "It is not incorrect — everyone understands it." ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionEight = "Because English is a confusing language where the word exchange is a verb and two types of a noun."
                                    if selectionEight == "Because English is a confusing language where the word exchange is a verb and two types of a noun." {
                                        isAnswerEightCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Because English is a confusing language where the word exchange is a verb and two types of a noun.")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionEight == "Because English is a confusing language where the word exchange is a verb and two types of a noun." ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        .padding()
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    title
                    dismissButton
                }
            }
            .navigationViewStyle(.stack)

            if showAlert {
                CustomAlertView(isShowAlert: $showAlert)
            }
        }.animation(.spring(), value: showAlert)
    }
}

//MARK: EXTENSION
extension FirstQuizGameView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Quiz")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }

    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                self.showAlert.toggle()
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    FirstQuizGameView(isShowQuizGame: .constant(false))
}
