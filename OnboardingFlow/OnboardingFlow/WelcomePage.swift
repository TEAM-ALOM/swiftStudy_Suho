//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by 정수호 on 4/7/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "cat.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("제 고양이를 소개합니다")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("포포")
                .font(.title2)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
