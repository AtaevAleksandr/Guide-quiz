//
//  SettingsButtonView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct SettingsButtonView: View {

    var title: String
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Text(LocalizedStringKey(title))
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .foregroundStyle(.white)
                .background(Color.theme.customGreen)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    SettingsButtonView(title: "gdf") {

    }
}
