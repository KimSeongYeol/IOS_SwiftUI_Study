//
//  ShoppingModel.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import Foundation


struct ShoppingModel: Decodable, Identifiable {
    var id = UUID()
    
    var crdNo: String//카드번호
    
    enum CodingKeys: String, CodingKey {
        case crdNo
    }
    
    init(crdNo: String) {
        self.crdNo = crdNo
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        crdNo = (try values.decodeIfPresent(String.self, forKey: .crdNo)) ?? ""
    }
}
