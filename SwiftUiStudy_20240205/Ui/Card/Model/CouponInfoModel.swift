//
//  CouponInfoMofel.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/07.
//

import Foundation

struct CouponInfoModel: Decodable {
    var receivePrice: Int
    var enuriImgName: String
    var amtImgName: String
    var wintImgName: String
    var enuriCopnRtntQty: Int//에누리쿠폰보유수량
    var amtDitiRtntQty: Int//금액할인권보유수량
    var wintInsmCopnRtntQty: Int//무이자할부쿠폰보유수량
    
    enum CodingKeys: String, CodingKey {
        case receivePrice
        case enuriImgName
        case amtImgName
        case wintImgName
        case enuriCopnRtntQty
        case amtDitiRtntQty
        case wintInsmCopnRtntQty
    }
    
    init(receivePrice: Int, enuriImgName: String, amtImgName: String, wintImgName: String, enuriCopnRtntQty: Int, amtDitiRtntQty: Int, wintInsmCopnRtntQty: Int) {
        self.receivePrice = receivePrice
        self.enuriImgName = enuriImgName
        self.amtImgName = amtImgName
        self.wintImgName = wintImgName
        self.enuriCopnRtntQty = enuriCopnRtntQty
        self.amtDitiRtntQty = amtDitiRtntQty
        self.wintInsmCopnRtntQty = wintInsmCopnRtntQty
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        receivePrice = (try values.decodeIfPresent(Int.self, forKey: .receivePrice)) ?? 0
        enuriImgName = (try values.decodeIfPresent(String.self, forKey: .enuriImgName)) ?? ""
        amtImgName = (try values.decodeIfPresent(String.self, forKey: .amtImgName)) ?? ""
        wintImgName = (try values.decodeIfPresent(String.self, forKey: .wintImgName)) ?? ""
        enuriCopnRtntQty = (try values.decodeIfPresent(Int.self, forKey: .enuriCopnRtntQty)) ?? 0
        amtDitiRtntQty = (try values.decodeIfPresent(Int.self, forKey: .amtDitiRtntQty)) ?? 0
        wintInsmCopnRtntQty = (try values.decodeIfPresent(Int.self, forKey: .wintInsmCopnRtntQty)) ?? 0
    }
}
