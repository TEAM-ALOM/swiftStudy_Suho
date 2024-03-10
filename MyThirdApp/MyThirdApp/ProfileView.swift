//
//  ProfileView.swift
//  MyThirdApp
//
//  Created by 정수호 on 3/10/24.
//

import SwiftUI

struct ProfileView: View {
    var name: String
    var image: String
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(Color(.whiteGray))
                    .frame(width: 60)
                
                Text(image)
                    .font(.system(size: 40))
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.black)
                Text("내 카드")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

#Preview {
    ProfileView(name: "정수호", image: "🥸")
}
