//
//  UIView+CALayer.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 12/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func makeCard() {
        applyShadow(
            shadowColor: UIColor.black,
            shadowOffset: CGSize(width: 0, height: 2),
            shadowOpacity: 0.1,
            shadowRadius: 4,
            cornerRadius: 4
        )
    }
    
    func applyShadow(
        shadowColor: UIColor?,
        shadowOffset: CGSize,
        shadowOpacity: Float,
        shadowRadius: CGFloat,
        cornerRadius: CGFloat) {
        
        self.layer.masksToBounds = false
        
        if let shadowColor = shadowColor {
            self.layer.shadowColor = shadowColor.cgColor
        } else {
            self.layer.shadowColor = UIColor.black.cgColor
        }
        
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
        self.layer.cornerRadius = cornerRadius
    }
    
    func applyShadow(
        shadowColor: UIColor?,
        shadowOffset: CGSize,
        shadowOpacity: Float,
        shadowRadius: CGFloat) {
        
        self.layer.masksToBounds = false
        
        if let shadowColor = shadowColor {
            self.layer.shadowColor = shadowColor.cgColor
        } else {
            self.layer.shadowColor = UIColor.black.cgColor
        }
        
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
    }
    
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
