//
//  DescriptionCell.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 15/04/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

class PreparationCell: UITableViewCell {
    
    @IBOutlet weak var preparationTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        preparationTextLabel.textColor = Constants.lissaDarkGray
    }
}
