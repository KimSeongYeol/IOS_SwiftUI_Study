//
//  UseListView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/07.
//

import SwiftUI

struct UseListView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left")
                Spacer()
            }
            .frame(minHeight: 50)
            .onTapGesture {
                self.presentationMode.wrappedValue.dismiss()
            }
            
            Text("UseListView")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
        .navigationBarBackButtonHidden()
    }
}

struct UseListView_providers: PreviewProvider {
    static var previews: some View {
        UseListView()
    }
}
