//
//  StoreVIew.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct StoreView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    
    var body: some View {
        VStack {
            HeaderView(title: .constant("지점안내"))
            
            ScrollView {
                LazyVGrid(columns: columns) { 
                    ForEach((0...100), id: \.self) { _ in
                        NavigationLink(destination: MenuView(), label: {
                            Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
                                .cornerRadius(15)
                                .frame(width: 50, height: 50)
                                .padding()
                        })
                    }
                }
            }
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
