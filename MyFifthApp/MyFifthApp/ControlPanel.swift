//
//  ControlPanel.swift
//  MyFifthApp
//
//  Created by 정수호 on 3/31/24.
//

import SwiftUI

struct ControlPanel: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                Color.white.edgesIgnoringSafeArea(.all)
                
                HStack(spacing: 3) {
                    Image(systemName: "play.rectangle.fill")
                        .resizable()
                        .frame(width: 35, height: 25)
                        .foregroundColor(.red)
                    Text("Premium")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.black)
                        .kerning(-1.0)
                }
                .padding(.top, 16)
                .padding(.leading, 16)
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "tv")
                        .font(.title2)
                        .frame(width: 30, height: 30)
                        .padding(.top, 16)
                        .padding(.trailing, 10)
                    
                    Image(systemName: "bell")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.top, 16)
                        .padding(.trailing, 10)
                    
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.top, 16)
                        .padding(.trailing, 16)
                }
            }
        }
    }
}

#Preview {
    ControlPanel()
}
