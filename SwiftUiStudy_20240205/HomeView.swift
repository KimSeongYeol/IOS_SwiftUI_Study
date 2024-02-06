//
//  HomeView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/05.
//

import SwiftUI

struct HomeView: View {
    
    @State
    private var isSelect: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(title: .constant("홈화면"))
                Text("Content")
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
                    .background(self.isSelect ? Color.blue : Color.yellow)
                    .onTapGesture {
                        print("Content TAP!!!")
                        debugPrint("test")
                        isSelect = !isSelect
                    }
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
