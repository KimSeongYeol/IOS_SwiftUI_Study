//
//  LoadIndicator.swift
//  hdds_ch
//
//  Created by 김태현 on 2023/06/05.
//  Copyright © 2023 Hyundai Department Store. All rights reserved.
//

import UIKit

class LoadIndicator {
    static var loadIndicator = LoadIndicatorView()
    
    static func show() {

        loadIndicator.loadingAnimation()
        
        guard let topVC = topViewController() else {
            return
        }

        topVC.view.addSubview(loadIndicator)
        loadIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loadIndicator.topAnchor.constraint(equalTo: topVC.view.topAnchor),
            loadIndicator.bottomAnchor.constraint(equalTo: topVC.view.bottomAnchor),
            loadIndicator.leadingAnchor.constraint(equalTo: topVC.view.leadingAnchor),
            loadIndicator.trailingAnchor.constraint(equalTo: topVC.view.trailingAnchor)
        ])
    }
    static func hide() {
        loadIndicator.removeFromSuperview()
    }
    
    // 최상단 컨트롤러를 찾는다.    
    static func topViewController() -> UIViewController? {
        if let keyWindow = UIApplication.shared.windows.first {
            var viewController = keyWindow.rootViewController
            while viewController?.presentedViewController != nil {
                viewController = viewController?.presentedViewController
            }
            return viewController
        }
        return nil
    }
    
    
}
