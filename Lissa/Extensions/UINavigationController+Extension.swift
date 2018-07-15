//
//  UINavigationController+Extension.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 06/07/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    
    func setLogoItem() {
        
    }
    
    fileprivate func addBarButtonItem(_ barButtonItems: inout [UIBarButtonItem], button: UIButton) {
        var addItemButton: UIBarButtonItem = UIBarButtonItem()
        addItemButton.customView = button
        barButtonItems.append(addItemButton)
    }
    
    func setMainMenuItems() {
        var barButtonItems: [UIBarButtonItem] = []
        
        addBarButtonItem(&barButtonItems, button: createNavBarButton(image: #imageLiteral(resourceName: "dummy_profile_pic"), roundedImage: true))
        addBarButtonItem(&barButtonItems, button: createNavBarButton(image: #imageLiteral(resourceName: "ic_clock")))
        addBarButtonItem(&barButtonItems, button: createNavBarButton(image: #imageLiteral(resourceName: "ic_favorite")))
        
        
        
        self.topViewController?.navigationItem.rightBarButtonItems = barButtonItems
    }
    
    private func createNavBarButton(image: UIImage, roundedImage: Bool = false) -> UIButton {
        
        let button = UIButton(type: .custom)
        
//        if #available(iOS 11, *) {
//            button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
//            button.imageEdgeInsets = UIEdgeInsets(top: -10, left: -10, bottom: -10, right: -10)
//            button.translatesAutoresizingMaskIntoConstraints = false
//            button.widthAnchor.constraint(equalToConstant: 35).isActive = true
//            button.heightAnchor.constraint(equalToConstant: 35).isActive = true
//        } else {
//            button.frame = CGRect(x: 0, y: 0, width: 42, height: 42)
//        }
        button.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
//        button.imageView?.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        button.contentMode = .center
        button.imageView?.layer.cornerRadius = roundedImage ? 12 : 0
        
        
        let newImage = image.af_imageAspectScaled(toFill: CGSize(width: 24, height: 24))
        button.setImage(newImage.withRenderingMode(.alwaysOriginal), for: .normal)
        
        return button
    }
}
