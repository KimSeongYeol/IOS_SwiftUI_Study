//
//  ShoppingView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct ShoppingView: View {
    var body: some View {
        VStack {
            HeaderView(title: .constant("쇼핑안내"))
            Spacer()
        }
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}
