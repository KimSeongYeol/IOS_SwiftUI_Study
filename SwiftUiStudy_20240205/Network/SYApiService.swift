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
    
    func getApi() -> ApiInfo{
        switch self {
            
        case .Home:
            return ApiInfo(url: "\(serverDomain)cdef04a2369c58fab10d4f11e027ef1b/raw/dc9ebca4a89391a93ea2b6612a78290956b69a9d/home.json")
        }
    }
}


