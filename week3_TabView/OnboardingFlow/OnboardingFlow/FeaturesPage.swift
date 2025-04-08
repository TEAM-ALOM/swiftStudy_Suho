//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by 정수호 on 4/7/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeatureCard(iconName: "dog.fill", description: "애교가 많고 사람을 좋아해요")
            
            FeatureCard(iconName: "quote.bubble.fill", description: "부르면 달려와요")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
