//
//  ShoppingItem.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import SwiftUI

struct ShoppingItem: View {
    
    @Binding var shoppingModel: ShoppingModel
    @Binding var buttonAction: (String) -> Void
    
    var body: some View {
        VStack {
            HStack {
                Text("\(shoppingModel.crdNo)")
                Spacer()
                Button("삭제", action: {
                    self.buttonAction(shoppingModel.crdNo)
                })
                .frame(width: 200, height: 50)
                .background(Color.brown)
            }
        }
        .padding(20)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct ShoppingItem_previews: PreviewProvider {
    static var previews: some View {
        ShoppingItem(shoppingModel: .constant(ShoppingModel(crdNo: "1234")), buttonAction: .constant { crdNo in
            
        })
            .previewLayout(.sizeThatFits)
    }
}
