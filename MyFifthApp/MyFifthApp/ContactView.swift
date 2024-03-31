//
//  ContactView.swift
//  MyFifthApp
//
//  Created by 정수호 on 3/31/24.
//

import SwiftUI

struct ContactView: View {
    @State private var selectedCategory = "전체"

    let categories = ["전체", "음악", "게임", "믹스", "뉴스", "농구", "야구", "수학", "축구", "요리"]
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ControlPanel()
            VStack {
                Spacer()
                    .frame(height: 50)
                CategoryPanel(selectedCategory: $selectedCategory)
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        if selectedCategory == "전체" {
                            AllScrollView()
                        }
                        else if selectedCategory == "음악" {
                            MusicScrollView()
                        }
                        else if selectedCategory == "게임" {
                            GameScrollView()
                        }
                        else if selectedCategory == "뉴스" {
                            NewsScrollView()
                        }
                        else if selectedCategory == "농구" {
                            BasketballScrollView()
                        }
                        else if selectedCategory == "축구" {
                            SoccerScrollView()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContactView()
}
