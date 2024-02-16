//
//  NumberExtension.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//
import Foundation

extension CGFloat {
    
    var ceilled: CGFloat {
        
        return CGFloat(ceilf(Float(self)))
    }
    
    var floored: CGFloat {
        
        return CGFloat(floor(Float(self)))
    }
}

extension Bool {
    
    /// CBool 과 같이 true면 1, false면 0을 리턴함
    var intValue: Int {
        return self ? 1 : 0
    }
    
    /// true면 "Y", false면 "N"을 리턴함
    var ynString: String {
        return self ? "Y": "N"
    }
}

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension Int {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ""
    }
    
    private static var numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter
    }()
    
    var delimiter: String {
        return Int.numberFormatter.string(from: NSNumber(value: self)) ?? ""
    }
    
    func commaString() -> String {
        let price = self as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale.current
        return formatter.string(from: price)!
    }
    
    func toString() -> String {
        return "\(self)"
    }
}

extension Double {
    func commaString() -> String {
        let price = self as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale.current
        return formatter.string(from: price)!
    }
    
    func toString() -> String {
        return "\(self)"
    }
}
