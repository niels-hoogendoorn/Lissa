//
//  IngredientCell.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 15/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

class IngredientCell: UITableViewCell {
    
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var ingredientName: UILabel!
    @IBOutlet weak var seperatorLine: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
