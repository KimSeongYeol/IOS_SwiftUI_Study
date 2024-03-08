//
//  HomeArtistSubItem.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomeArtistSubItem: View {
    
    @State var musicInfo: HomeResponse.Artist.MusicInfo?
    
    var body: some View {
        HStack {
            Image(systemName: "figure.walk")
                .frame(minWidth: 50, minHeight: 50)
                .background(Color.blue)
            
            Spacer(minLength: 10)
            
            VStack {
                Text("\(musicInfo?.musicName ?? "")").frame(maxWidth: .infinity, alignment: .leading)
                Text("\(musicInfo?.artistName ?? "")").frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
        .padding(10)
    }
}

struct HomeArtistSubItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeArtistSubItem(musicInfo: HomeResponse.Artist.MusicInfo(musicName: "비도 오고 그래서", artistName: "헤이즈"))
            .previewLayout(.sizeThatFits)
    }
}
