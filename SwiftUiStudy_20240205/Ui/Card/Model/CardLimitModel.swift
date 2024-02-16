//
//  CardLimitModel.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/14.
//

import Foundation

struct CardLimitModel: Decodable {
    var totBndsAmt: Int//총한도금액
    var useAmt: Int//사용금액
    var rmndBndsAmt: Int//잔여한도금액
    var imdtUpwdPossBndsAmt: Int//즉시상향가능한도금액
    var tmpBndsExpAmt: Int//임시한도예상금액
    var speclBndsExpAmt: Int//특별한도예상금액
    var tmpBndsAmt: Int//임시한도금액
    var speclBndsAmt: Int//특별한도금액
    var tmpBndsStrtDt: String//임시한도시작일자
    var tmpBndsEndDt: String//임시한도종료일자
    var speclBndsStrtDt: String//특별한도시작일자
    var speclBndsEndDt: String//특별한도종료일자
    var speclBndsUseAmt: Int//특별한도사용금액
    
    ///특별한도 잔여금액
    func getSpeclBndsRemainAmt() -> Int {
        return speclBndsAmt - speclBndsUseAmt
    }
    
    enum CodingKeys: String, CodingKey {
        case totBndsAmt
        case useAmt
        case rmndBndsAmt
        case imdtUpwdPossBndsAmt
        case tmpBndsExpAmt
        case speclBndsExpAmt
        case tmpBndsAmt
        case speclBndsAmt
        case tmpBndsStrtDt
        case tmpBndsEndDt
        case speclBndsStrtDt
        case speclBndsEndDt
        case speclBndsUseAmt
    }
    
    init(totBndsAmt: Int, useAmt: Int, rmndBndsAmt: Int, imdtUpwdPossBndsAmt: Int, tmpBndsExpAmt: Int, speclBndsExpAmt: Int, tmpBndsAmt: Int, speclBndsAmt: Int, tmpBndsStrtDt: String, tmpBndsEndDt: String, speclBndsStrtDt: String, speclBndsEndDt: String, speclBndsUseAmt: Int) {
        self.totBndsAmt = totBndsAmt
        self.useAmt = useAmt
        self.rmndBndsAmt = rmndBndsAmt
        self.imdtUpwdPossBndsAmt = imdtUpwdPossBndsAmt
        self.tmpBndsExpAmt = tmpBndsExpAmt
        self.speclBndsExpAmt = speclBndsExpAmt
        self.tmpBndsAmt = tmpBndsAmt
        self.speclBndsAmt = speclBndsAmt
        self.tmpBndsStrtDt = tmpBndsStrtDt
        self.tmpBndsEndDt = tmpBndsEndDt
        self.speclBndsStrtDt = speclBndsStrtDt
        self.speclBndsEndDt = speclBndsEndDt
        self.speclBndsUseAmt = speclBndsUseAmt
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        totBndsAmt = (try values.decodeIfPresent(Int.self, forKey: .totBndsAmt)) ?? 0
        useAmt = (try values.decodeIfPresent(Int.self, forKey: .useAmt)) ?? 0
        rmndBndsAmt = (try values.decodeIfPresent(Int.self, forKey: .rmndBndsAmt)) ?? 0
        imdtUpwdPossBndsAmt = (try values.decodeIfPresent(Int.self, forKey: .imdtUpwdPossBndsAmt)) ?? 0
        tmpBndsExpAmt = (try values.decodeIfPresent(Int.self, forKey: .tmpBndsExpAmt)) ?? 0
        speclBndsExpAmt = (try values.decodeIfPresent(Int.self, forKey: .speclBndsExpAmt)) ?? 0
        tmpBndsAmt = (try values.decodeIfPresent(Int.self, forKey: .tmpBndsAmt)) ?? 0
        speclBndsAmt = (try values.decodeIfPresent(Int.self, forKey: .speclBndsAmt)) ?? 0
        tmpBndsStrtDt = (try values.decodeIfPresent(String.self, forKey: .tmpBndsStrtDt)) ?? ""
        tmpBndsEndDt = (try values.decodeIfPresent(String.self, forKey: .tmpBndsEndDt)) ?? ""
        speclBndsStrtDt = (try values.decodeIfPresent(String.self, forKey: .speclBndsStrtDt)) ?? ""
        speclBndsEndDt = (try values.decodeIfPresent(String.self, forKey: .speclBndsEndDt)) ?? ""
        speclBndsUseAmt = (try values.decodeIfPresent(Int.self, forKey: .speclBndsUseAmt)) ?? 0
    }
}
