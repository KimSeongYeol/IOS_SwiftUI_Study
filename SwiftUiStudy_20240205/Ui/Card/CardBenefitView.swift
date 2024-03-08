//
//  CardBenefitView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct CardBenefitView: View {
    @Binding var couponInfo: CouponInfoResponse.CouponInfo
    
    var body: some View {
        VStack {
            HStack {
                Text("올해받은혜택")
                Spacer()
                HStack {
                    Text("\(couponInfo.receivePrice)원")
                    Image(systemName: "arrow.right")
                }
            }
            .frame(minHeight: 64)
            if couponInfo.enuriCopnRtntQty != 0 {
                CardBenefitItemView(imgName: .constant(couponInfo.enuriImgName), title: .constant("에누리 쿠폰"), count: .constant(couponInfo.enuriCopnRtntQty))
            }
            if couponInfo.amtDitiRtntQty != 0 {
                CardBenefitItemView(imgName: .constant(couponInfo.amtImgName), title: .constant("금액할인권"), count: .constant(couponInfo.amtDitiRtntQty))
            }
            if couponInfo.wintInsmCopnRtntQty != 0 {
                CardBenefitItemView(imgName: .constant(couponInfo.wintImgName), title: .constant("할부 쿠폰"), count: .constant(couponInfo.wintInsmCopnRtntQty))
            }
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)
        .padding(.bottom, 20)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        
    }
}

struct CardBenefitView_Previews: PreviewProvider {
    static var previews: some View {
        CardBenefitView(couponInfo: .constant(CouponInfoResponse.CouponInfo(receivePrice: 0, enuriImgName: "", amtImgName: "", wintImgName: "", enuriCopnRtntQty: 1, amtDitiRtntQty: 2, wintInsmCopnRtntQty: 3)))
            .previewLayout(.sizeThatFits)
    }
}
