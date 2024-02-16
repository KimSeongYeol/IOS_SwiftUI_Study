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
    
    @State var isLoadingComp = false
    
    init() {
    }
    
    var body: some View {
        NavigationView(content: {
            VStack {
                HeaderView(title: .constant("현대백화점 카드"))
                if isLoadingComp {
                    ScrollView {
                        if let useListData = self.cardViewModel.useListData {
                            CardUseListView(cardDataList: .constant(useListData))
                        }
                        
                        if let couponData = self.cardViewModel.couponData {
                            CardBenefitView(couponData: .constant(couponData))
                        }
                        
                        if let cardLimitData = cardViewModel.cardLimitData {
                            CardLimitView(cardLimitModel: .constant(cardLimitData))
                        }
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .task {
                        await self.cardViewModel.fetchTest()
                    }
                } else {
                    ProgressView("Loding...")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                }
            }
            .onAppear {
                self.cardViewModel.fetchUseListData()
                self.cardViewModel.fetchCouponData()
            }
            .onReceive(Publishers.CombineLatest(cardViewModel.$useListData, cardViewModel.$couponData), perform: { _useListData, _couponData in
                if let useListData = _useListData, let couponData = _couponData {
                    self.isLoadingComp = true
                }
            })
        })
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
