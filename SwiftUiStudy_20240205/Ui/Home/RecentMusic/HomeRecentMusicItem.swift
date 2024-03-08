//
//  HomeRecentMusicItem.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomeRectntMusicItem: View {
    
    @State var recentMusic: HomeResponse.RecentMusics?
    
    var body: some View {
        HStack {
            Image(systemName: "circle.square.fill")
                .frame(minWidth: 50, minHeight: 50)
                .background(Color.green)
            
            VStack {
                Text("\(recentMusic?.musicName ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("\(recentMusic?.artist ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }.frame(minWidth: 250, maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
        .padding(10)
    }
}

struct HomeRectntMusicItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeRectntMusicItem(recentMusic: HomeResponse.RecentMusics(musicName: "널 미워하기로 했어", artist: "이예준"))
            .previewLayout(.sizeThatFits)
    }
}
