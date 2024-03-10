//
//  ProfileDetailView.swift
//  MyThirdApp
//
//  Created by 정수호 on 3/10/24.
//

import SwiftUI

struct ProfileDetaileView: View {
    var person: Person
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color.gray], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Circle()
                    .fill(Color.whiteGray)
                    .frame(width: 300)
                    
                    Text(person.imageName)
                        .font(.system(size: 180))
                }
                .padding()
                
                Text(person.name)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.white)
                
                Button {
                    print(person.number)
                } label: {
                    Text(person.number)
                        .font(.system(size: 20))
                        .frame(width: 350, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(.blue)
                        .bold()
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    ProfileDetaileView(person: my)
}
