//
//  HomeMusicStationItem.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomeMusicStationItem: View {
    @State var musicStation: HomeResponse.MusicStations?
    var body: some View {
        VStack {
            Text("금요일이니까")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 12))
            Image(systemName: "sun.min")
                .frame(maxWidth: .infinity, maxHeight: 100)
                .background(Color.gray)
            Text("\(musicStation?.title ?? "")")
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.bold)
                .font(.system(size: 14))
            Text("\(musicStation?.message ?? "")")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 14))
            
        }
        .frame(minWidth: 300)
        .padding(.horizontal, 10).padding(.vertical, 10)
    }
}

struct HomeMusicStationItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeMusicStationItem(musicStation: HomeResponse.MusicStations(title: "FRIDAY DISCO", message: "곧 있으면 주밀이니까! 조금만 더 힘을 내보자고!"))
            .previewLayout(.sizeThatFits)
    }
}
