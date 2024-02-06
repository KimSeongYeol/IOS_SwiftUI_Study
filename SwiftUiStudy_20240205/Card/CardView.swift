//
//  CardView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ScrollView {
            HeaderView(title: .constant("현대백화점 카드"))
            CardUseListView()
            CardBenefitView()
            CardLimitView()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
