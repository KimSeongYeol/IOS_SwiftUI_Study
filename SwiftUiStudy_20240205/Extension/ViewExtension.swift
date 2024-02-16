//
//  ViewExtension.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/07.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
