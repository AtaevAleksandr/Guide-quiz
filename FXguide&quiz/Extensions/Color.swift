//
//  Color.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 22.02.2024.
//

import Foundation
import SwiftUI

extension Color {

    static let theme = ColorTheme()
}

struct ColorTheme {
    let background: Color = Color("BackgroundColor")
    let backgroundComponents: Color = Color("BackgroundComponents")
    let backgroundWeb: Color = Color("BackgroundWeb")
    let customGray: Color = Color("CustomGrayColor")
    let customGreen: Color = Color("CustomGreenColor")
    let textGray: Color = Color("TextGrayColor")
}
