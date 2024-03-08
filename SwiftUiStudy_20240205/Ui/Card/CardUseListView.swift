//
//  CardUseListView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

/**
 홈 -> 카드 -> 이용내역
 */
struct CardUseListView: View {
    @Binding var cardDataList: [CardUseListResponse.CardUseListItem]
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                HStack {
                    Text("이용내역")
                        .background(Color.gray)
                    Spacer()
                    
                    HStack {
                        Text("더보기")
                            .foregroundColor(.black)
                        Image(systemName: "arrow.right")
                            .foregroundColor(.black)
                    }
//                    .sheet(isPresented: .constant(true), content: {
//                        UseListView()
//                    })
                    
                }
                .frame(minHeight: 44, maxHeight: 44)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                
                ForEach(cardDataList, id: \.crdNo) { item in
                    CardUseListItemView(cardData: .constant(CardUseListResponse.CardUseListItem(crdNo: item.crdNo, memNm: item.memNm, storeNm: item.storeNm, aprvlDt: item.storeNm, aprvlAmt: item.aprvlAmt, crdInsmMths: item.crdInsmMths)))
                        .background(Color.red)
                }
                
            }
            .frame(maxWidth: .infinity)
            .background(Color.blue)
        }
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}

struct CardUseList_Previews: PreviewProvider {
    static var previews: some View {
        CardUseListView(cardDataList: .constant([
            CardUseListResponse.CardUseListItem(crdNo: "1111", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0),
            CardUseListResponse.CardUseListItem(crdNo: "2222", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0),
            CardUseListResponse.CardUseListItem(crdNo: "3333", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0)
        ]))
        .previewLayout(.sizeThatFits)
    }
}
