//
//  ShoppingMainView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import SwiftUI

struct ShoppingMainView: View {
    @State var tabBarVisibility: Visibility = .visible
    @State var isToRoot: Bool = false
    
    var body: some View {
        VStack {
            HeaderView(title: .constant("쇼핑안내"))
            NavigationLink(destination: ShoppingView(tab: self)) {
                Text("Go to Shopping Detail View")
            }
            Spacer()
        }
    }
}

struct ShoppingMainView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingMainView()
    }
}
