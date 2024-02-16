//
//  HeaderView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var title: String
    
    @State var isSearchShow: Bool = false
    
    var body: some View {
        HStack(spacing: 0) {
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "magnifyingglass")
                .frame(minWidth: 50, minHeight: 50)
                .background(Color.blue)
                .onTapGesture {
                    isSearchShow.toggle()
                }
                .sheet(isPresented: .constant(isSearchShow), onDismiss: {
                    isSearchShow.toggle()
                }, content: {
                    SearchView()
                })
                
            Image(systemName: "bell")
                .frame(minWidth: 50, minHeight: 50)
                .background(Color.red)
            NavigationLink(destination: MenuView()) {
                Image(systemName: "menucard")
                    .frame(minWidth: 50, minHeight: 50)
                    .background(Color.yellow)
            }
        }
        .frame(maxHeight: 50)
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .clipShape(Rectangle())
        
        //                    .sheet(isPresented: .constant(true), content: {
        //                        UseListView()
        //                    })
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: .constant("현대백화점카드"))
            .previewLayout(.sizeThatFits)
    }
}
