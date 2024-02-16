//
//  SubHeaderView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import SwiftUI

struct SubHeaderView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var title: String = ""
    @State var backEvent: (() -> Void)?
    @State var homeEvent: (() -> Void)?
    
    var body: some View {
        HStack {
            Image(systemName: "arrow.left")
                .frame(minWidth: 50, minHeight: 50)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                    
                    if let backEvent = self.backEvent {
                        backEvent()
                    }
                }
            Text("\(title)")
            Spacer()
            Image(systemName: "house")
                .frame(minWidth: 50, minHeight: 50)
                .onTapGesture {
                    NavigationUtil.popToRootView()
                    if let homeEvent = self.homeEvent {
                        homeEvent()
                    }
                }
            NavigationLink(destination: MenuView()) {
                Image(systemName: "menucard")
                    .frame(minWidth: 50, minHeight: 50)
            }
        }
        .frame(minHeight: 50)
        
    }
}

struct SubHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SubHeaderView(title: "title")
            .previewLayout(.sizeThatFits)
    }
}
