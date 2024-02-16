//
//  MyView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        VStack {
            HeaderView(title: .constant("마이페이지"))
            Spacer()
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
