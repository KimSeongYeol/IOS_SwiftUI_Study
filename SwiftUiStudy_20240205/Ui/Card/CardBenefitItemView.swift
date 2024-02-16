//
//  CardBenefitItemView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct CardBenefitItemView: View {
    @Binding var imgName: String
    @Binding var title: String
    @Binding var count: Int
    
    var body: some View {
        HStack {
            Image(systemName: "\(imgName)")
            Text("\(title)")
            Spacer()
            Text("\(count)")
            Text("개")
            Image(systemName: "arrow.right")
        }
        .frame(minHeight: 52, maxHeight: 52)
        .padding(.leading, 16)
        .padding(.trailing, 16)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct CardBenefitItemView_previews: PreviewProvider {
    static var previews: some View {
        CardBenefitItemView(imgName: .constant("creditcard"), title: .constant("에누리 쿠폰"), count: .constant(1))
            .previewLayout(.sizeThatFits)
    }
}
