//
//  ShoppingViewModel.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import SwiftUI

class ShoppingViewModel: ObservableObject {
    @Published var shoppingData: [ShoppingModel] = []
    
    func fetchAddItem(crdNo: String = "") {
        if crdNo.isEmpty {
            shoppingData.append(ShoppingModel(crdNo: "\(shoppingData.count + 1) Count"))
        } else {
            shoppingData.append(ShoppingModel(crdNo: "\(crdNo) Count"))
        }
    }

}
