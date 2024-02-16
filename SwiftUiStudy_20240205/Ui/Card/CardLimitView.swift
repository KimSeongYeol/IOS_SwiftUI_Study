//
//  CardLimitView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct CardLimitView: View {
    @Binding var cardLimitModel: CardLimitModel
    var body: some View {
        VStack {
            HStack {
                Text("한도조회")
                Spacer()
                HStack {
                    Text("자세히보기")
                    Image(systemName: "arrow.right")
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            CardLimitSubView1(cardLimitModel: .constant(cardLimitModel))
            CardLimitSubView2(cardLimitModel: .constant(cardLimitModel))
            CardLimitSubView3(cardLimitModel: .constant(cardLimitModel))
        }
    }
}

struct CardLimitView_Previews: PreviewProvider {
    static var previews: some View {
        CardLimitView(cardLimitModel: .constant(CardLimitModel(totBndsAmt: 0, useAmt: 0, rmndBndsAmt: 0, imdtUpwdPossBndsAmt: 0, tmpBndsExpAmt: 0, speclBndsExpAmt: 0, tmpBndsAmt: 0, speclBndsAmt: 0, tmpBndsStrtDt: "", tmpBndsEndDt: "", speclBndsStrtDt: "", speclBndsEndDt: "", speclBndsUseAmt: 0)))
    }
}
