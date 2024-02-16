//
//  StringExtension.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//
import Foundation

extension String {
    var dateFormmated: String {
        if self.count == 8 {
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyyMMdd"
            if let date = dateFormatter.date(from: self) {
                
                dateFormatter.dateFormat = "yyyy.MM.dd"
                return dateFormatter.string(from: date)
            }
        }
        
        return self
    }
}
