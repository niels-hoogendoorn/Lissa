//
//  AddRecipeViewController.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 15/07/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

class AddRecipeViewController: UIViewController {
    
    @IBOutlet weak var lightNavItem: UINavigationItem!
    
    let pageTitle = "Nieuw recept"
    let pageTitleImage = #imageLiteral(resourceName: "ic_plus")
    
    override func viewDidLoad() {
        self.addCustomNavBar(navItem: lightNavItem, pageTitle: pageTitle, pageLogo: pageTitleImage, textFirst: false, textColor: .lightGray)
        
    }
    
}
