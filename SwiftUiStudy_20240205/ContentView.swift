//
//  ContentView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                HomeView()
                    .tabItem {
                        Label("홈", systemImage: "house")
                            .font(.system(size: 12))
//                        Image(systemName: "house")
//                            .font(.system(size: 24))
//                        Text("홈")
//                            .font(.system(size: 12))
//                            .foregroundColor(Color.green)
                    }
                StoreView()
                    .tabItem {
                        Image(systemName: "bag")
                        Text("지점")
                    }
                CardView()
                    .tabItem {
                        Image(systemName: "wallet.pass")
                        Text("카드")
                    }
                ShoppingView()
                    .tabItem {
                        Image(systemName: "cart")
                        Text("쇼핑")
                    }
                MyView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("마이")
                    }
            }
            .accentColor(.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
