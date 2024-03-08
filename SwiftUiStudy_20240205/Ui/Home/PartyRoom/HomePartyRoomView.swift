//
//  HomePartyRoomView.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomePartyRoomView: View {
    
    @State var isToggle: Bool = false
    @State var partyRooms: [HomeResponse.PartyRooms] = []
    
    var body: some View {
        VStack {
            HStack {
                Text("나를 위한 파티룸")
                Spacer()
                Toggle(isOn: self.$isToggle) {
                }
            }.padding(.vertical, 10).padding(.horizontal, 20)
            
            if isToggle {
                HomePartyRoomDefaultItem()
            } else {
                ScrollView(.horizontal, content: {
                    LazyHStack(content: {
                        Spacer(minLength: 10)
                        
                        ForEach(partyRooms, id: \.id) { partyRoom in
                            HomePartyRoomItem(partyRoom: partyRoom)
                        }
                    })
                })
                .frame(minHeight: 60, maxHeight: 60)
                .scrollIndicators(.never)
            }
        }
    }
}

struct HomePartyRoomView_Previews: PreviewProvider {
    static var previews: some View {
        HomePartyRoomView()
            .previewLayout(.sizeThatFits)
    }
}
