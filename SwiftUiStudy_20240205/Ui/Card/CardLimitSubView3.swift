//
//  CardLimitSubVIew3.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import SwiftUI

struct CardLimitSubView3: View {
    @Binding var cardLimitModel: CardLimitResponse
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("한도를 상향할 수 있어요.")
                Text("\(cardLimitModel.rmndBndsAmt)원까지 가능")
            }
            
            Spacer()
            Button("신청하기") {
                
            }
            .frame(minWidth: 72, minHeight: 28)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 6))

        }
        .padding(20)
    }
}

struct CardLimitSubView3_previews: PreviewProvider {
    static var previews: some View {
        CardLimitSubView3(cardLimitModel: .constant(CardLimitResponse(totBndsAmt: 0, useAmt: 0, rmndBndsAmt: 0, imdtUpwdPossBndsAmt: 0, tmpBndsExpAmt: 0, speclBndsExpAmt: 0, tmpBndsAmt: 0, speclBndsAmt: 0, tmpBndsStrtDt: "", tmpBndsEndDt: "", speclBndsStrtDt: "", speclBndsEndDt: "", speclBndsUseAmt: 0)))
            .previewLayout(.sizeThatFits)
            
    }
}
