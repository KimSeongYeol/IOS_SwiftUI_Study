//
//  NaviUtil.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/15.
//

import Foundation
import UIKit

struct NavigationUtil {
  static func popToRootView() {
      let keyWindow = UIApplication.shared.connectedScenes
              .filter({$0.activationState == .foregroundActive})
              .compactMap({$0 as? UIWindowScene})
              .first?.windows
              .filter({$0.isKeyWindow}).first
      findNavigationController(viewController: keyWindow?.rootViewController)?
      .popToRootViewController(animated: true)
  }
 
    static func findNavigationController(viewController: UIViewController?) -> UINavigationController? {
        guard let viewController = viewController else {
            return nil
        }
        
        if let navigationController = viewController as? UINavigationController {
            return navigationController
        }
        
        for childViewController in viewController.children {
            return findNavigationController(viewController: childViewController)
        }
        
        return nil
    }
}
