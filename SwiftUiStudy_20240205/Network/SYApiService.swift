//
//  ApiInfo.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/7/24.
//

import Foundation
//import Alamofire

struct ApiInfo {
    var url: String = ""
//    var method: HTTPMethod = .post
}

var serverDomain: String = "https://gist.githubusercontent.com/KimSeongYeol/"

enum SYApiService {
    case Home
    case CardUseList
    case CouponInfo
    
    func getApi() -> ApiInfo{
        switch self {
            
        case .Home:
            return ApiInfo(url: "\(serverDomain)cdef04a2369c58fab10d4f11e027ef1b/raw/aab16c64cc4ec47e5529edaa4143a723274de634/home.json")
        case .CardUseList:
            return ApiInfo(url: "\(serverDomain)0110d80fe40e7539f2185680a146eafb/raw/f88d8fd8e2aa1fd65c8607c1292f410a930965a7/cardUseList.json")
        case .CouponInfo:
            return ApiInfo(url: "\(serverDomain)09afed143272d0a74081f4cc44327ca7/raw/a6669de4d475d5565f899df6ef3f8fe7e9fa85d4/couponInfo.json")
        }
    }
}


