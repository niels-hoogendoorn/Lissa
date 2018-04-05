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
        
        createGradientLayer()
        contentContainer.makeCard()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    func createGradientLayer() {
        let colorBottom = UIColor.black
        let colorTop = UIColor.clear
        let colors = [colorTop, colorBottom]
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.recipeImageView.bounds
        
        gradientLayer.colors = colors.map({$0.cgColor})
        gradientLayer.startPoint = CGPoint(x:0.0, y:0.0)
        gradientLayer.endPoint = CGPoint(x:0.0, y:1.4)
        self.recipeImageView.layer.addSublayer(gradientLayer)
    }
}
