//
//  HomeRectntMusicView.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomeRectntMusicView: View {
    @State var recentMusics: [HomeResponse.RecentMusics] = []
    var body: some View {
        VStack {
            HStack {
                Text("최근 들은 노래")
                Spacer()
                Button("더보기") {
                    
                }
            }.padding(10)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(recentMusics, id: \.id) { recentMusic in
                        VStack {
                            HomeRectntMusicItem(recentMusic: recentMusic)
                            HomeRectntMusicItem(recentMusic: recentMusic)
                            HomeRectntMusicItem(recentMusic: recentMusic)
                            HomeRectntMusicItem(recentMusic: recentMusic)
                            HomeRectntMusicItem(recentMusic: recentMusic)
                        }
                    }
                }
            }
            .frame(maxHeight: 400)
            .scrollIndicators(.never)
            .onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }
            Spacer(minLength: 20)
        }
        .frame(maxHeight: 500)
    }
}

struct HomeRecentMusicView_Previews: PreviewProvider {
    static var previews: some View {
        HomeRectntMusicView()
            .previewLayout(.sizeThatFits)
    }
}
