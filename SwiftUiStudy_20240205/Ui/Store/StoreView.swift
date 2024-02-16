//
//  StoreVIew.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct StoreView: View {
    var body: some View {
        VStack {
            HeaderView(title: .constant("지점안내"))
            Spacer()
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
