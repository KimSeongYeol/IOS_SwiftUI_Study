//
//  CardView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI
import Combine

/**
 홈 -> 카드
 */
struct CardView: View {
    
    @ObservedObject var cardViewModel = CardViewModel()
    
//    @State var isLoadingComp = false
    
    @State var cardUseListResponse: CardUseListResponse?
    @State var couponInfoResponse: CouponInfoResponse?
    
    init() {
    }
    
    var body: some View {
        NavigationView(content: {
            VStack {
                HeaderView(title: .constant("현대백화점 카드"))
                
//                if let cardLimitData = cardViewModel.cardLimitData {
//                    CardLimitView(cardLimitModel: .constant(cardLimitData))
//                }
                
                if let cardUseList = cardUseListResponse, let couponInfo = couponInfoResponse {
                    ScrollView {
                        CardUseListView(cardDataList: .constant(cardUseList.cardUseLise))
                        CardBenefitView(couponInfo: .constant(couponInfo.couponInfo))
                    }.padding(.horizontal, 20)
                } else {
                    ProgressView("Loding...")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                }
            }
            .task {
                do {
                    cardUseListResponse = try await SYNetwork.SYNetworkCall(requsetUrl: .CardUseList, responseClass: CardUseListResponse.self)
                    couponInfoResponse = try await SYNetwork.SYNetworkCall(requsetUrl: .CouponInfo, responseClass: CouponInfoResponse.self)
                } catch {
                    print("test")
                }
            }
        })
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
