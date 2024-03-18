//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 정수호 on 3/19/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
        }
        .labelStyle(.iconOnly)
        .foregroundStyle(isSet ? .yellow : .gray)
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
