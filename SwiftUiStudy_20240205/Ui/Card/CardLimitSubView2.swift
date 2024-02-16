//
//  CardLimitSubView2.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import SwiftUI

struct CardLimitSubView2: View {
    @Binding var cardLimitModel: CardLimitModel
    var body: some View {
        VStack {
            HStack {
                Text("특별 한도")
                    .font(.system(size: 14))
                Text("~2024.12.31")
                    .font(.system(size: 14))
                Spacer()
                Text("\(cardLimitModel.rmndBndsAmt)원")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            }
            .padding(.bottom, 12)
            HStack {
                Text("잔여 특별한도")
                    .font(.system(size: 14))
                Spacer()
                Text("\(cardLimitModel.rmndBndsAmt)원")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            }
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 20)
    }
}

struct CardLimitSubView2_previews: PreviewProvider {
    static var previews: some View {
        CardLimitSubView2(cardLimitModel: .constant(CardLimitModel(totBndsAmt: 0, useAmt: 0, rmndBndsAmt: 0, imdtUpwdPossBndsAmt: 0, tmpBndsExpAmt: 0, speclBndsExpAmt: 0, tmpBndsAmt: 0, speclBndsAmt: 0, tmpBndsStrtDt: "", tmpBndsEndDt: "", speclBndsStrtDt: "", speclBndsEndDt: "", speclBndsUseAmt: 0)))
            .previewLayout(.sizeThatFits)
    }
}
