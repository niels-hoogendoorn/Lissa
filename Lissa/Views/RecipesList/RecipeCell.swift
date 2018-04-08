//
//  RecipeCell.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 11/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

class RecipeCell: UITableViewCell {
    
    @IBOutlet weak var contentContainer: UIView!
    @IBOutlet weak var imageContainer: UIView!
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var imageLoaderIndicator: UIActivityIndicatorView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var informationContainer: UIView!
    @IBOutlet weak var personViewContainer: UIView!
    @IBOutlet weak var timeViewContainer: UIView!
    
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var gradientLayer: CAGradientLayer!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        gradientLayer = createGradientLayer(imageView: recipeImageView)
        recipeImageView.layer.addSublayer(gradientLayer)
        
        contentContainer.makeCard()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
}
