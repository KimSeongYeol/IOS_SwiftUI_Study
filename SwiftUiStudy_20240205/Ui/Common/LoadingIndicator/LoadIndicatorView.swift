//
//  LoadIndicatorView.swift
//  hdds_ch
//
//  Created by 김태현 on 2023/06/05.
//  Copyright © 2023 Hyundai Department Store. All rights reserved.
//

import UIKit
import SwiftUI

class LoadIndicatorView: UIView {

    @IBOutlet weak var gifImageView: UIImageView! {
        didSet {
            gifImageView.animationImages = [UIImage(named: "01IconVisual3DHdcard0248")!,
                                            UIImage(named: "02IconVisual3DDiscount48")!,
                                            UIImage(named: "03IconVisual3DLuxury40")!,
                                            UIImage(named: "04IconVisual3DTime48")!,
                                            UIImage(named: "05IconVisual3DCafeh48")!,
                                            UIImage(named: "06IconVisual3DReceipt0248")!,
                                            UIImage(named: "07IconVisual3DCulturalcenter48")!,
                                            UIImage(named: "08iconVisual3DCamera40")!]
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initXib()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initXib()
    }
    
    func rotateLayerInfinite() {
        let rotation = CABasicAnimation.init(keyPath: "transform.rotation")
        rotation.fromValue = 0
        rotation.toValue = 2 * Float.pi
        rotation.duration = 0.7
        rotation.repeatCount = .greatestFiniteMagnitude
        
        self.gifImageView.layer.removeAllAnimations()
        self.gifImageView.layer.add(rotation, forKey: "Spin")
    }
    
    func loadingAnimation() {
        self.gifImageView.animationDuration = 1.5
        self.gifImageView.startAnimating()
    }

    private func initXib() {
        guard let xibName = NSStringFromClass(self.classForCoder).components(separatedBy: ".").last else { return  }
        if let view = Bundle.main.loadNibNamed(xibName, owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.addSubview(view)
        }
    }
}
