//
//  FifthQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 05.03.2024.
//

import SwiftUI

struct FifthQuizGameView: View {

    @State var selectionOne: String?
    @State var selectionTwo: String?

    @State var selectionOneOfThree: String?
    @State var selectionTwoOfThree: String?
    @State var selectionThreeOfThree: String?

    @State var selectionFour: String?
    @State var selectionFive: String?

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false
    @State var isAnswerFourCorrect: Bool = false
    @State var isAnswerFiveCorrect: Bool = false

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
                                Text("In dollar terms, how much is trading globally in currencies each day?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionOne = "$10 million"
                                    if selectionOne == "$10 million" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("$10 million")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "$10 million" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "$4 billion"
                                    if selectionOne == "$4 billion" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("$4 billion")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "$4 billion" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "$5 trillion"
                                    if selectionOne == "$5 trillion" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("$5 trillion")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "$5 trillion" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionOne = "More than $7 trillion"
                                    if selectionOne == "More than $7 trillion" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("More than $7 trillion")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOne == "More than $7 trillion" ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 2
                            VStack(spacing: 10) {
                                Text("Which are the three most commonly traded currency pairs?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionTwo = "Dollar/Yen, Euro/Yen, and Pound/Yen"
                                    if selectionTwo == "Dollar/Yen, Euro/Yen, and Pound/Yen" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Dollar/Yen, Euro/Yen, and Pound/Yen")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Dollar/Yen, Euro/Yen, and Pound/Yen" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "Euro/Dollar, Dollar/Yen, and Pound/Dollar"
                                    if selectionTwo == "Euro/Dollar, Dollar/Yen, and Pound/Dollar" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Euro/Dollar, Dollar/Yen, and Pound/Dollar")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Euro/Dollar, Dollar/Yen, and Pound/Dollar" ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionTwo = "Euro/Dollar, Dollar/Pound, and Euro/Pound"
                                    if selectionTwo == "Euro/Dollar, Dollar/Pound, and Euro/Pound" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Euro/Dollar, Dollar/Pound, and Euro/Pound")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwo == "Euro/Dollar, Dollar/Pound, and Euro/Pound" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 3
                            VStack(spacing: 10) {
                                Text("What is the downside to trading a currency pair that does not include the dollar?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    if selectionOneOfThree == "Higher volatility" {
                                        selectionOneOfThree = nil
                                    } else {
                                        selectionOneOfThree = "Higher volatility"
                                    }

                                    if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" && selectionThreeOfThree == "Lack of liquidity" {
                                            isAnswerThreeCorrect = false
                                        } else if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" {
                                            isAnswerThreeCorrect = true
                                        } else {
                                            isAnswerThreeCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        Text("Higher volatility")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionOneOfThree == "Higher volatility" ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    if selectionTwoOfThree == "Wide bid/ask spread" {
                                        selectionTwoOfThree = nil
                                    } else {
                                        selectionTwoOfThree = "Wide bid/ask spread"
                                    }

                                    if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" && selectionThreeOfThree == "Lack of liquidity" {
                                            isAnswerThreeCorrect = false
                                        } else if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" {
                                            isAnswerThreeCorrect = true
                                        } else {
                                            isAnswerThreeCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        Text("Wide bid/ask spread")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionTwoOfThree == "Wide bid/ask spread" ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    if selectionThreeOfThree == "Lack of liquidity" {
                                        selectionThreeOfThree = nil
                                    } else {
                                        selectionThreeOfThree = "Lack of liquidity"
                                    }

                                    if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" && selectionThreeOfThree == "Lack of liquidity" {
                                            isAnswerThreeCorrect = false
                                        } else if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" {
                                            isAnswerThreeCorrect = true
                                        } else {
                                            isAnswerThreeCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        Text("Lack of liquidity")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionThreeOfThree == "Lack of liquidity" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 4
                            VStack(spacing: 10) {
                                Text("What currency pair does the term “cable” refer to?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFour = "Deutschemark"
                                    if selectionFour == "Deutschemark" {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Deutschemark")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "Deutschemark" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFour = "Great Britain pound"
                                    if selectionFour == "Great Britain pound" {
                                        isAnswerFourCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Great Britain pound")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "Great Britain pound" ? Color.theme.customGreen : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFour = "New Zealand dollar"
                                    if selectionFour == "New Zealand dollar" {
                                        isAnswerFourCorrect = false
                                    }

                                } label: {
                                    HStack {
                                        Text("New Zealand dollar")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFour == "New Zealand dollar" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding()
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                            //QUESTION 5
                            VStack(spacing: 10) {
                                Text("What is the only currency quoted in local currency terms that is not a former British colony?")
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)

                                Button {
                                    selectionFive = "New Zealand dollar"
                                    if selectionFive == "New Zealand dollar" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("New Zealand dollar")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "New Zealand dollar" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFive = "Canadian dollar"
                                    if selectionFive == "Canadian dollar" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Canadian dollar")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "Canadian dollar" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFive = "Yen"
                                    if selectionFive == "Yen" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        Text("Yen")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "Yen" ? Color.red : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                }

                                Button {
                                    selectionFive = "Euro"
                                    if selectionFive == "Euro" {
                                        isAnswerFiveCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        Text("Euro")
                                            .font(.system(size: 15, weight: .regular))
                                            .foregroundStyle(.black)
                                            .multilineTextAlignment(.leading)

                                        Spacer()
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                    .background(selectionFive == "Euro" ? Color.theme.customGreen : Color.white)
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
extension FifthQuizGameView {
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
    FifthQuizGameView(isShowQuizGame: .constant(false))

}
