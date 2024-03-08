//
//  HomeView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/05.
//

import SwiftUI
import Combine

struct HomeView: View {
    
    @State
    private var isSelect: Bool = false
    
    @State
    private var homeResponse: HomeResponse?
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                HeaderView(title: .constant("홈화면"))
                
                if let homeResponse = homeResponse {
                    ScrollView {
                        VStack {
                            HomePartyRoomView(partyRooms: homeResponse.partyRooms)
                            HomeMusicStationView(musicStations: homeResponse.musicStations)
                            HomeMixTapeView(mixTapes: homeResponse.mixTapes)
                            HomeRectntMusicView(recentMusics: homeResponse.recentMusics)
                        }
                    }
                } else {
                    ProgressView()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                }
            }
            .task {
                do {
                    homeResponse = try await SYNetwork.SYNetworkCall(requsetUrl: .Home, responseClass: HomeResponse.self)
                } catch {
                    print("test")
                }
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
