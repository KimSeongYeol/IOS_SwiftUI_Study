//
//  ContentView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/05.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.brown
    }
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    HomeView()
                        .tabItem {
                            Label("홈", systemImage: "house")
                                .font(.system(size: 12))
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
                    ShoppingMainView()
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
