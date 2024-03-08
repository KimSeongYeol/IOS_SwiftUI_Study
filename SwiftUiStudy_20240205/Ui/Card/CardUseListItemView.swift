//
//  CardUseListItemView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

/**
 홈 -> 카드 -> 이용내역 -> 아이템
 */
struct CardUseListItemView: View {
    @Binding var cardData: CardUseListResponse.CardUseListItem
    
    var body: some View {
        VStack {
            HStack {
                Text(cardData.storeNm)
                    .font(.system(size: 15))
                Spacer()
                Text("\(cardData.aprvlAmt) 원")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            }
            .frame(minHeight: 22)
            .background(Color.yellow)
            .padding(.bottom, 4)
            
            HStack {
                Text(cardData.aprvlDt.dateFormmated)
                    .font(.system(size: 14))
                Spacer()
            }
            .frame(minHeight: 21)
            .background(Color.blue)
            .padding(.bottom, 8)
            
            HStack {
                Text(cardData.memNm)
                    .font(.system(size: 12))
                Text(cardData.crdNo)
                    .font(.system(size: 12))
                Text("\(cardData.crdInsmMths)")
                    .font(.system(size: 12))
                Spacer()
            }
            .frame(minHeight: 18)
            .background(Color.brown)
            .padding(.bottom, 16)
            
//            Spacer()
            
//            Rectangle()
//                .frame(width: .infinity, height: 1)
//                .foregroundColor(.gray)
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
//        .background(Color.cyan)
        .frame(maxHeight: 106)
    }
}

struct CardUseListItemView_Previews: PreviewProvider {
    static var previews: some View {
        CardUseListItemView(cardData: .constant(CardUseListResponse.CardUseListItem(crdNo: "1234", memNm: "김성열", storeNm: "현대백화점 판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0)))
            .previewLayout(.sizeThatFits)
    }
}
