//
//  HomePartyRoom.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomePartyRoomDefaultItem: View {
    var body: some View {
        
        HStack {
            Image(systemName: "person")
            VStack {
                Text("다양한 이야기와 음악이 만나는곳")
                    .font(.system(size: 13))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer(minLength: 10)
                Text("파티룸을 시작해 보세요!")
                    .font(.system(size: 15))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            Button("시작하기") {
                
            }
            .padding(10)
            .background(Color.blue)
            .foregroundColor(Color.white)
        }
        .padding(.horizontal, 20).padding(.vertical, 10)
        .frame(maxHeight: 60)
    }
}

struct HomePartyRoomDefaultItem_Previews: PreviewProvider {
    static var previews: some View {
        HomePartyRoomDefaultItem()
            .previewLayout(.sizeThatFits)
    }
}
