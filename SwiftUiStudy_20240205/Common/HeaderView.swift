//
//  HeaderView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var title: String
    
    var body: some View {
        HStack(spacing: 20) {
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 32))
            Image(systemName: "bell")
                .font(.system(size: 32))
            Image(systemName: "menucard")
                .font(.system(size: 32))
        }
        .frame(maxHeight: 50)
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: .constant("현대백화점카드"))
//        HeaderView(title: "현대백화점카드")
    }
}
