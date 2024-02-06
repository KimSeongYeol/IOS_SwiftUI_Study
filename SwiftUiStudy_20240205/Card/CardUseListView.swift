//
//  CardUseListView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct CardUseListView: View {
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                HStack {
                    Text("이용내역")
                        .background(Color.gray)
                    Spacer()
                    HStack {
                        Text("더보기")
                        Image(systemName: "arrow.right")
                    }
                    .onTapGesture {
                        print("")
                    }
                }
                .frame(minHeight: 44)
                
                CardUseListItemView()
                    .background(Color.red)
                CardUseListItemView()
                    .background(Color.gray)
                CardUseListItemView()
                    .background(Color.yellow)
                
            }
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .padding(20)
            .cornerRadius(10)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.gray, lineWidth: 2)
            }
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
        
    }
}

struct CardUseList_Previews: PreviewProvider {
    static var previews: some View {
        CardUseListView()
    }
}
