//
//  CardUseList.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import Foundation

struct CardUseListModel: Decodable, Identifiable {
    var id: String {
        self.crdNo
    }
    
    var crdNo: String//카드번호
    var memNm: String//회원명
    var storeNm: String//점명
    var aprvlDt: String//승인일자
    var aprvlAmt: Int//승인금액
    var crdInsmMths: Int//카드할부개월수
    
    enum CodingKeys: String, CodingKey {
        case crdNo
        case memNm
        case storeNm
        case aprvlDt
        case aprvlAmt
        case crdInsmMths
    }
    
    init(crdNo: String, memNm: String, storeNm: String, aprvlDt: String, aprvlAmt: Int, crdInsmMths: Int) {
        self.crdNo = crdNo
        self.memNm = memNm
        self.storeNm = storeNm
        self.aprvlDt = aprvlDt
        self.aprvlAmt = aprvlAmt
        self.crdInsmMths = crdInsmMths
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        crdNo = (try values.decodeIfPresent(String.self, forKey: .crdNo)) ?? ""
        memNm = (try values.decodeIfPresent(String.self, forKey: .memNm)) ?? ""
        storeNm = (try values.decodeIfPresent(String.self, forKey: .storeNm)) ?? ""
        aprvlDt = (try values.decodeIfPresent(String.self, forKey: .aprvlDt)) ?? ""
        aprvlAmt = (try values.decodeIfPresent(Int.self, forKey: .aprvlAmt)) ?? 0
        crdInsmMths = (try values.decodeIfPresent(Int.self, forKey: .crdInsmMths)) ?? 0
    }
}
