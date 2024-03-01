//
//  ContentView.swift
//  MySecondApp
//
//  Created by 정수호 on 2/28/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var img: String? = nil
    @State var name: String? = nil
    
    var body: some View {
        
        VStack{
            
            if let name = name {
                
                Text("선택된 항목은 \(name)입니다!")
                
            }
            
            if let img = img {
                
                Image(img)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
                .padding(20)
                
            }
            
            HStack {
                
                ZStack {
                    
                    Button(action: {
                        
                        self.img = "scissors"
                        self.name = "가위"
                        
                    }, label: {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.red)
                            .frame(width: 100, height: 100)
                        
                    })
                    
                    Text("가위")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                    
                }
                
                ZStack {
                    
                    Button(action: {
                        
                        self.img = "rock"
                        self.name = "바위"
                        
                    }, label: {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.blue)
                            .frame(width: 100, height: 100)
                        
                    })
                    
                    Text("바위")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                    
                }
                
                ZStack {
                    
                    Button(action: {
                        
                        self.img = "paper"
                        self.name = "보"
                        
                    }, label: {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.yellow)
                            .frame(width: 100, height: 100)
                        
                    })
                    
                    Text("보")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()

                }
            }
            
            ZStack {
            
                Button(action: {
                    
                    self.img = nil
                    self.name = nil
                    
                }, label: {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.green)
                        .frame(width: 315, height: 100)
                    
                })

                Text("그만하기")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
