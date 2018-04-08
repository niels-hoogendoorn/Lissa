//
//  UIViewController+Extension.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 08/04/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    func createGradientLayer(imageView: UIImageView) -> CAGradientLayer {
        let colorBottom = UIColor.black
        let colorTop = UIColor.clear
        let colors = [colorTop, colorBottom]
        let layer = CAGradientLayer()
        layer.frame = imageView.bounds
        
        layer.colors = colors.map({$0.cgColor})
        layer.startPoint = CGPoint(x:0.0, y:0.0)
        layer.endPoint = CGPoint(x:0.0, y:1.4)
        return layer
    }
}
