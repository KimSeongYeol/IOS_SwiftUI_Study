//
//  MenuHeaderView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/15.
//

import SwiftUI

struct MenuHeaderView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var settingAction: (() -> Void)?
    @State var closeAction: (() -> Void)?
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "folder")
                .frame(minWidth: 50, minHeight: 50)
                .onTapGesture {
                    if let settingAction = self.settingAction {
                        settingAction()
                    }
                }
            Image(systemName: "xmark")
                .frame(minWidth: 50, minHeight: 50)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                }
//            Image(systemName: "xmark")
//                .frame(minWidth: 50, minHeight: 50)
//                .onTapGesture {
//                    if let closeAction = self.closeAction {
//                        closeAction()
//                    }
//                }
        }
        .frame(minHeight: 50)
        .padding(.horizontal, 20)
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
