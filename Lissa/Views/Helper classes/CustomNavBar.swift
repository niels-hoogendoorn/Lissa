//
//  CustomNavBar.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 29/04/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

class CustomNavBar: UINavigationBar {
    override var backItem: UINavigationItem? {
        let item = UINavigationItem()
        item.title = .empty
        
        return item
    }
    
}
