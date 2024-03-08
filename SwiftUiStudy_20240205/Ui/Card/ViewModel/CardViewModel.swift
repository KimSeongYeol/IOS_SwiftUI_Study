//
//  CardViewModel.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/07.
//

import SwiftUI

class CardViewModel: ObservableObject {
    
    @Published var useListData: [CardUseListResponse]?
    @Published var couponData: CouponInfoResponse?
    @Published var cardLimitData: CardLimitResponse?
    
    func fetchUseListData() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.useListData = [
//                CardUseListResponse(crdNo: "1111", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0),
//                CardUseListResponse(crdNo: "2222", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0),
//                CardUseListResponse(crdNo: "3333", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0)
//            ]
//        }
    }
    
    func fetchCouponData() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            self.couponData = CouponInfoResponse(receivePrice: 0, enuriImgName: "creditcard", amtImgName: "banknote", wintImgName: "sun.max", enuriCopnRtntQty: 1, amtDitiRtntQty: 2, wintInsmCopnRtntQty: 3)
//        }
    }
    
    func fetchCardLimitData() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            self.cardLimitData = CardLimitResponse(totBndsAmt: 0, useAmt: 0, rmndBndsAmt: 0, imdtUpwdPossBndsAmt: 0, tmpBndsExpAmt: 0, speclBndsExpAmt: 0, tmpBndsAmt: 0, speclBndsAmt: 0, tmpBndsStrtDt: "", tmpBndsEndDt: "", speclBndsStrtDt: "", speclBndsEndDt: "", speclBndsUseAmt: 0)
//        }
    }
}
