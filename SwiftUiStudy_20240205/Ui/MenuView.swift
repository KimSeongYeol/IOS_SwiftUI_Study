//
//  MenuView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/15.
//

import SwiftUI

struct MenuView: View {
    
    @Environment(\.presentationMode) var presentationMode
//    @State var closeAction: (() -> Void)?
    
    var body: some View {
        VStack(alignment: .trailing) {
            MenuHeaderView(closeAction: {
//                if let closeAction = self.closeAction {
//                    closeAction()
//                }
            })
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
