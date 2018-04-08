//
//  RecipeDetailTableViewController.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 15/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

class RecipeDetailTableViewController: UITableViewController {
    
    // MARK: - Headerview
    @IBOutlet weak var headerContainer: UIView!
    @IBOutlet weak var imageContainer: UIView!
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var imageLoaderIndicator: UIActivityIndicatorView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var informationContainer: UIView!
    @IBOutlet weak var personViewContainer: UIView!
    @IBOutlet weak var timeViewContainer: UIView!
    
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    // MARK: - TableView
    
    
    // MARK: - General
    
    var recipe: Recipe!
    var gradientLayer: CAGradientLayer!
    
    override func viewDidLoad() {
        fetchData()
        gradientLayer = createGradientLayer(imageView: recipeImageView)
        recipeImageView.layer.addSublayer(gradientLayer)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        gradientLayer.frame = headerContainer.bounds
    }
}
