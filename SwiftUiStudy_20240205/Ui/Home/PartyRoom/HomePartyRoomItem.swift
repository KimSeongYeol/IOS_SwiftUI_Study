//
//  HomePartyRoomItem.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomePartyRoomItem: View {
    
    @State var partyRoom: HomeResponse.PartyRooms?
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: "pencil.circle.fill")
            VStack {
                HStack {
                    Text("\(partyRoom?.name ?? "")")
                    Spacer()
                }
                HStack {
                    Text("\(partyRoom?.owner ?? "")")
                    Text("\(partyRoom?.count ?? "" )명")
                    Spacer()
                }
            }
            Spacer()
        }
        .frame(minWidth: 300, minHeight: 50)
        .padding(.leading, 20).padding(.trailing, 20)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 10))

    }
}

struct HomePartyRoomItem_Previews: PreviewProvider {
    static var previews: some View {
        HomePartyRoomItem(partyRoom: HomeResponse.PartyRooms(name: "잔잔하고 감성 가득한 음악", owner: "맑은하늘", count: "500"))
            .previewLayout(.sizeThatFits)
    }
}
