//
//  HomeArtistItem.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomeArtistItem: View {
    
    @State var artist: HomeResponse.Artist?
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "shareplay")
                    .frame(width: 50,height: 50)
                    .background(Color.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                VStack {
                    Text("\(artist?.name ?? "")").frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        Button("PLAY") {
                            
                        }
                        Spacer()
                    }
                    
                }.frame(maxWidth: .infinity)
            }.padding(.vertical, 10)
            
            VStack {
                if let artist = self.artist {
                    ForEach(artist.musicInfo, id: \.id) { musicInfo in
                        HomeArtistSubItem(musicInfo: musicInfo)
                    }
                }
            }
            
            Button("더보기") {
                
            }
            .frame(maxWidth: .infinity)
            .padding(10)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .frame(maxWidth: 300)
        .padding(.horizontal, 10).padding(.bottom, 10)
    }
}

struct HomeArtistItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeArtistItem(artist: HomeResponse.Artist(name: "헤이즈", musicInfo: [
            HomeResponse.Artist.MusicInfo(musicName: "비도 오고 그래서", artistName: "헤이즈"),
            HomeResponse.Artist.MusicInfo(musicName: "돌아오지마", artistName: "헤이즈"),
            HomeResponse.Artist.MusicInfo(musicName: "And July", artistName: "헤이즈"),
        ]))
            .previewLayout(.sizeThatFits)
    }
}
