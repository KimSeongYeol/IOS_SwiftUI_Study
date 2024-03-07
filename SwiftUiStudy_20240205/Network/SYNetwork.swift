//
//  SyNetwork.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/7/24.
//

import Foundation

public class SYNetwork {
    
    class func SYNetworkCall<T : Decodable>(requsetUrl: SYApiService, responseClass: T.Type) async throws -> T {
        
        if let url = URL(string: requsetUrl.getApi().url) {
            
            let (data, response) = try await URLSession.shared.data(from: url)
                
            do {
                if let httpResponse = response as? HTTPURLResponse {
                    if httpResponse.statusCode == 200 {
//                        let str = String(data: data, encoding: .utf8)
                        let result = try JSONDecoder().decode(responseClass.self, from: data)
                        return result
                    } else {
                        throw SYError(code: httpResponse.statusCode, message: httpResponse.description)
                    }
                } else {
                    throw SYError(code: 998, message: "Fatal Error")
                }
            } catch {
                print("error \(error)")
                throw error
            }
        } else {
            throw SYError(code: 999, message: "Fatal Error")
        }
    }
}
