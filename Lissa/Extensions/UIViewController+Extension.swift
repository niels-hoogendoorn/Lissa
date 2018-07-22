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
    
    func addCustomNavBar(navItem: UINavigationItem, pageTitle: String, pageLogo: UIImage?, textFirst: Bool = true, textColor: UIColor = .lightGray) {
        self.navigationController?.navigationBar.tintColor = .lightGray
        let customBackButton = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_back_button_light"), style: .done, target: self, action: #selector(goBack))
        navItem.hidesBackButton = true
        navItem.leftBarButtonItem = customBackButton
        let customTitleView = UIView(frame: .zero)
        customTitleView.makeViewWithTitleAndImage(title: pageTitle, image: pageLogo, textFirst: textFirst, textColor: textColor)
        navItem.titleView = customTitleView

    }
    
    @objc func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
