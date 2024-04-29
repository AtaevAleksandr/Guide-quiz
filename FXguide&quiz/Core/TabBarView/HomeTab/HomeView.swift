//
//  HomeView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import SwiftUI

struct HomeView: View {

    @State var showQuizOne: Bool = false
    @State var showQuizTwo: Bool = false
    @State var showQuizThree: Bool = false
    @State var showQuizFour: Bool = false
    @State var showQuizFive: Bool = false
    @State var showQuizSix: Bool = false
    @State var showQuizSeven: Bool = false
    @State var showQuizEight: Bool = false
    @State var showQuizNine: Bool = false
    @State var showQuizTen: Bool = false
    @State var showQuizEleven: Bool = false
    @State var showQuizTwelve: Bool = false
    @State var showQuizThirteen: Bool = false

    @EnvironmentObject var storyVM: StoryViewModel
    @EnvironmentObject var homeVM: HomeViewModel

    @State var isStartQuiz: Bool = false
    @State var isShowArchive: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                OnboardingBackgroundView()

                VStack {
                    StoryRowView()
                        .padding(.bottom, 15)

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            switch homeVM.states {
                            case .empty:
                                EmptyView()

                            case .timer:
                                Text("The next lesson is via:")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundStyle(Color.theme.customGray)

                                Text(homeVM.remainTime)
                                    .font(.system(size: 32, weight: .bold))
                                    .foregroundStyle(.white)
                                    .padding(10)
                                    .background(Color.theme.backgroundComponents)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding(.bottom, 23)
                            }

                            VStack(spacing: 0) {
                                ForEach(homeVM.allQuizzes) { quiz in
                                    if quiz.isComplete || quiz.id == 1 || quiz.isActive {

                                        Button {
                                            switch quiz.id {
                                            case 1:
                                                showQuizOne = true
                                            case 2:
                                                showQuizTwo = true
                                            case 3:
                                                showQuizThree = true
                                            case 4:
                                                showQuizFour = true
                                            case 5:
                                                showQuizFive = true
                                            case 6:
                                                showQuizSix = true
                                            case 7:
                                                showQuizSeven = true
                                            case 8:
                                                showQuizEight = true
                                            case 9:
                                                showQuizNine = true
                                            case 10:
                                                showQuizTen = true
                                            case 11:
                                                showQuizEleven = true
                                            case 12:
                                                showQuizTwelve = true
                                            case 13:
                                                showQuizThirteen = true
                                            default:
                                                break
                                            }
                                        } label: {
                                            HStack(spacing: 10) {
                                                Image(systemName: "\(quiz.id).circle.fill")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 24, height: 24)
                                                    .foregroundStyle(.black)

                                                Text(LocalizedStringKey(quiz.title))
                                                    .font(.system(size: 16, weight: .medium))
                                                    .foregroundStyle(.black)
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .multilineTextAlignment(.leading)
                                            }
                                            .padding(.horizontal)
                                            .frame(height: 50)
                                            .background(quiz.backgroundColor)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                        }
                                    } else {
                                        Button(action: {}) {
                                            HStack(spacing: 10) {
                                                Image(.lock)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 24, height: 24)
                                                    .foregroundStyle(.black)

                                                Text(LocalizedStringKey(quiz.title))
                                                    .font(.system(size: 16, weight: .medium))
                                                    .foregroundStyle(.black)
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .multilineTextAlignment(.leading)
                                            }
                                            .padding(.horizontal)
                                            .frame(height: 50)
                                            .background(quiz.backgroundColor)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                        }
                                        .disabled(true)
                                    }
                                }
                                .padding(5)
                            }
                            .padding(10)
                            .background(Color.theme.backgroundComponents)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                }
                .padding()
            }
            .onAppear {
                if homeVM.allQuizzes[12].isComplete {
                    homeVM.states = .empty
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
            .fullScreenCover(isPresented: $showQuizOne) {
                FirstInfoQuizView(isStartQuiz: $showQuizOne)
            }
            .fullScreenCover(isPresented: $showQuizTwo) {
                SecondInfoQuizView(isStartQuiz: $showQuizTwo)
            }
            .fullScreenCover(isPresented: $showQuizThree) {
                ThirdInfoQuizView(isStartQuiz: $showQuizThree)
            }
            .fullScreenCover(isPresented: $showQuizFour) {
                FourthInfoQuizView(isStartQuiz: $showQuizFour)
            }
            .fullScreenCover(isPresented: $showQuizFive) {
                FifthInfoQuizView(isStartQuiz: $showQuizFive)
            }
            .fullScreenCover(isPresented: $showQuizSix) {
                SixthInfoQuizView(isStartQuiz: $showQuizSix)
            }
            .fullScreenCover(isPresented: $showQuizSeven) {
                SeventhInfoQuizView(isStartQuiz: $showQuizSeven)
            }
            .fullScreenCover(isPresented: $showQuizEight) {
                EighthInfoQuizView(isStartQuiz: $showQuizEight)
            }
            .fullScreenCover(isPresented: $showQuizNine) {
                NinthInfoQuizView(isStartQuiz: $showQuizNine)
            }
            .fullScreenCover(isPresented: $showQuizTen) {
                TenthInfoQuizView(isStartQuiz: $showQuizTen)
            }
            .fullScreenCover(isPresented: $showQuizEleven) {
                EleventhInfoQuizView(isStartQuiz: $showQuizEleven)
            }
            .fullScreenCover(isPresented: $showQuizTwelve) {
                TwelfthInfoQuizView(isStartQuiz: $showQuizTwelve)
            }
            .fullScreenCover(isPresented: $showQuizThirteen) {
                ThirteenthInfoQuizView(isStartQuiz: $showQuizThirteen)
            }
        }
        .navigationViewStyle(.stack)
        .overlay {
            StoryDetailView()
                .environmentObject(storyVM)
        }
    }
}

//MARK: EXTENSION
extension HomeView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Home")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(StoryViewModel())
        .environmentObject(HomeViewModel())
}
