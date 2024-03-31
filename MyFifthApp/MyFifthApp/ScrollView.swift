//
//  ScrollView.swift
//  MyFifthApp
//
//  Created by 정수호 on 3/31/24.
//

import SwiftUI

struct AllScrollView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                MusicScrollView()
                GameScrollView()
                NewsScrollView()
                BasketballScrollView()
                SoccerScrollView()
            }
        }
    }
}

struct MusicScrollView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("화면1번")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
                
                Image("화면2번")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
                
                Image("화면6번")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
            }
        }
    }
}

struct GameScrollView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("화면7번")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
                
                Image("화면8번")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
            }
        }
    }
}

struct NewsScrollView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("화면4번")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
            }
        }
    }
}

struct BasketballScrollView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("화면3번")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
            }
        }
    }
}

struct SoccerScrollView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("화면5번")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 20)
                    .aspectRatio(contentMode: .fill)
            }
        }
    }
}

#Preview {
    AllScrollView()
}

#Preview {
    MusicScrollView()
}

#Preview {
    GameScrollView()
}

#Preview {
    NewsScrollView()
}

#Preview {
    BasketballScrollView()
}

#Preview {
    SoccerScrollView()
}
