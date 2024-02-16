//
//  CardViewModel.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/07.
//

import SwiftUI
import RxSwift

class CardViewModel: ObservableObject {
    
    @Published var useListData: [CardUseListModel]?
    @Published var couponData: CouponInfoModel?
    @Published var cardLimitData: CardLimitModel?
    
    func fetchUseListData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.useListData = [
                CardUseListModel(crdNo: "1111", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0),
                CardUseListModel(crdNo: "2222", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0),
                CardUseListModel(crdNo: "3333", memNm: "김성열", storeNm: "현대백화점판교", aprvlDt: "20240110", aprvlAmt: 10000000, crdInsmMths: 0)
            ]
        }
    }
    
    func fetchCouponData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.couponData = CouponInfoModel(receivePrice: 0, enuriImgName: "creditcard", amtImgName: "banknote", wintImgName: "sun.max", enuriCopnRtntQty: 1, amtDitiRtntQty: 2, wintInsmCopnRtntQty: 3)
        }
    }
    
    func fetchCardLimitData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.cardLimitData = CardLimitModel(totBndsAmt: 0, useAmt: 0, rmndBndsAmt: 0, imdtUpwdPossBndsAmt: 0, tmpBndsExpAmt: 0, speclBndsExpAmt: 0, tmpBndsAmt: 0, speclBndsAmt: 0, tmpBndsStrtDt: "", tmpBndsEndDt: "", speclBndsStrtDt: "", speclBndsEndDt: "", speclBndsUseAmt: 0)
        }
    }
    
    static func makeNetworkRequest<T: Decodable> (responseClass: T.Type) -> Observable<T> {
        return Observable.create { observer -> Disposable in
//            HDNetwork.HDNetworkCall(request: request, responseClass: responseClass.self) { result, error in
//                if let error = error {
//                    observer.onError(error)
//                }
//                
//                if let response = result {
//                    observer.onNext(response)
//                }
//                
//                observer.onCompleted()
//            }
            return Disposables.create()
        }
    }
    
//    func fetchTest() async -> Observable<T>{
//        Observable.create { observer -> Disposable in
//            return Disposables.create()
//        }
////        do {
////            let _ = try await
////        } catch {
////            print("error")
////        }
//    }
}
