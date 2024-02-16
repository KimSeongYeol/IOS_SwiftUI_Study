//
//  CardBenefitView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct CardBenefitView: View {
    @Binding var couponData: CouponInfoModel
    
    var body: some View {
        VStack {
            HStack {
                Text("올해받은혜택")
                Spacer()
                HStack {
                    Text("\(couponData.receivePrice)원")
                    Image(systemName: "arrow.right")
                }
            }
            .frame(minHeight: 64)
            if couponData.enuriCopnRtntQty != 0 {
                CardBenefitItemView(imgName: .constant(couponData.enuriImgName), title: .constant("에누리 쿠폰"), count: .constant(couponData.enuriCopnRtntQty))
            }
            if couponData.amtDitiRtntQty != 0 {
                CardBenefitItemView(imgName: .constant(couponData.amtImgName), title: .constant("금액할인권"), count: .constant(couponData.amtDitiRtntQty))
            }
            if couponData.wintInsmCopnRtntQty != 0 {
                CardBenefitItemView(imgName: .constant(couponData.wintImgName), title: .constant("할부 쿠폰"), count: .constant(couponData.wintInsmCopnRtntQty))
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
        CardBenefitView(couponData: .constant(CouponInfoModel(receivePrice: 0, enuriImgName: "", amtImgName: "", wintImgName: "", enuriCopnRtntQty: 1, amtDitiRtntQty: 2, wintInsmCopnRtntQty: 3)))
            .previewLayout(.sizeThatFits)
    }
}
