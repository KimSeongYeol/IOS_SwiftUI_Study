//
//  CardLimitSubView1.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import SwiftUI

struct CardLimitSubView1: View {
    @Binding var cardLimitModel: CardLimitResponse
    var body: some View {
        VStack {
            HStack {
                Text("이용 한도")
                    .font(.system(size: 14))
                Spacer()
                Text("\(cardLimitModel.rmndBndsAmt)원")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            }
            .padding(.bottom, 12)
            HStack {
                Text("잔여 한도")
                    .font(.system(size: 14))
                Spacer()
                Text("\(cardLimitModel.rmndBndsAmt)원")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            }
            
            Divider()
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 20)
    }
}

struct CardLimitSubView1_previews: PreviewProvider {
    static var previews: some View {
        CardLimitSubView1(cardLimitModel: .constant(CardLimitResponse(totBndsAmt: 0, useAmt: 0, rmndBndsAmt: 0, imdtUpwdPossBndsAmt: 0, tmpBndsExpAmt: 0, speclBndsExpAmt: 0, tmpBndsAmt: 0, speclBndsAmt: 0, tmpBndsStrtDt: "", tmpBndsEndDt: "", speclBndsStrtDt: "", speclBndsEndDt: "", speclBndsUseAmt: 0)))
            .previewLayout(.sizeThatFits)
    }
}
