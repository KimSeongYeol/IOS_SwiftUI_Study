//
//  HomeMusicStationView.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomeMusicStationView: View {
    
    @State var musicStations: [HomeResponse.MusicStations] = []
    
    var body: some View {
        ScrollView(.horizontal, content: {
            LazyHStack(content: {
                Spacer(minLength: 10)
                
                ForEach(musicStations, id: \.id) { musicStation in
                    HomeMusicStationItem(musicStation: musicStation)
                }
            })
        })
        .frame(minHeight: 300, maxHeight: 200)
        .scrollIndicators(.never)
    }
}

struct HomeMusicStationView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMusicStationView()
            .previewLayout(.sizeThatFits)
    }
}
