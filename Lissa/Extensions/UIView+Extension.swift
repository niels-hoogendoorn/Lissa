//
//  UIView+Extension.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 15/07/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func makeViewWithTitleAndImage(title: String,
                                   image: UIImage?,
                                   textFirst: Bool = true,
                                   textColor: UIColor = .darkGray) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let containerView = UIView(frame: .zero)
        let label = UILabel(frame: .zero)
        let imageView = UIImageView(frame: .zero)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(containerView)
        containerView.addSubview(label)
        containerView.addSubview(imageView)
        
        containerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        label.text = title
        label.textColor = textColor
        label.numberOfLines = 1
        label.leftAnchor.constraint(equalTo: textFirst ? containerView.leftAnchor : imageView.rightAnchor,
                                    constant: textFirst ? 0 : 8).isActive = true
        label.rightAnchor.constraint(equalTo: textFirst ? imageView.leftAnchor : containerView.rightAnchor,
                                     constant: textFirst ? -8 : 0).isActive = true
        label.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true

        imageView.image = image
        imageView.contentMode = .center
        imageView.centerYAnchor.constraint(equalTo: label.centerYAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = textFirst ? true : false
        imageView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = textFirst ? false : true
        self.setNeedsLayout()
        self.layoutIfNeeded()
    }

}
