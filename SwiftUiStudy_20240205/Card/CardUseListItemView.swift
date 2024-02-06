//
//  CardUseListItemView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct CardUseListItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("식품 현대백화점")
                    .font(.system(size: 15))
                Spacer()
                Text("1,000,000 원")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            }
            
            HStack {
                Text("2024.01.10")
                    .font(.system(size: 14))
                Spacer()
            }
            HStack {
                Text("김현대")
                    .font(.system(size: 12))
                Text("1234")
                    .font(.system(size: 12))
                Text("일시불")
                    .font(.system(size: 12))
                Spacer()
            }
        }
        .padding(20)
    }
}

struct CardUseListItemView_Previews: PreviewProvider {
    static var previews: some View {
        CardUseListItemView()
    }
}
