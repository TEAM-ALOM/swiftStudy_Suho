//
//  CategoryPanel.swift
//  MyFifthApp
//
//  Created by 정수호 on 3/31/24.
//

import SwiftUI

struct CategoryPanel: View {
    @Binding var selectedCategory: String

    let categories = ["전체", "음악", "게임", "믹스", "뉴스", "농구", "야구", "수학", "축구", "요리"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categories, id: \.self) { category in
                    CategoryButton(categoryName: category, isSelected: category == selectedCategory, action: {
                        selectedCategory = category
                    })
                }
            }
            .padding()
        }
    }
}


struct CategoryButton: View {
    var categoryName: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Text(categoryName)
                .padding(10)
                .foregroundColor(isSelected ? .white : .black)
                .background(isSelected ? Color.black : Color.whiteGray)
                .cornerRadius(10)
        }
    }
}
