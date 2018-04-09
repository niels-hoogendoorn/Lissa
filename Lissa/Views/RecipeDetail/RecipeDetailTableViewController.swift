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
    var ingredients: [Ingredient]?
    var gradientLayer: CAGradientLayer!
    
    override func viewDidLoad() {
        displayData()
        gradientLayer = createGradientLayer(imageView: recipeImageView)
        recipeImageView.layer.addSublayer(gradientLayer)
        
    }
    
    func displayData() {
        loadImageInView(imageUrl: recipe.imageUrl, view: recipeImageView)
        titleLabel.text = recipe.title
        personLabel.text = "\(recipe.numberOfPersons as Int) person(s)"
        personLabel.textColor = Constants.lissaGray
        timeLabel.text = "\(recipe.minutes as Int) minutes"
        timeLabel.textColor = Constants.lissaGray
        ingredients = recipe.ingredients
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        gradientLayer.frame = headerContainer.bounds
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard
            let ingredients = ingredients,
            let cell = tableView.cellForRow(at: indexPath),
            let activeCell = cell as? IngredientCell
        else { return }
        
        let ingredient = ingredients[indexPath.row]
        
        if ingredient.checked {
            activeCell.checkButton.setImage(#imageLiteral(resourceName: "ic_unchecked"), for: .normal)
            activeCell.ingredientName.textColor = Constants.lissaDarkGray
        } else {
            activeCell.checkButton.setImage(#imageLiteral(resourceName: "ic_checkmark"), for: .normal)
            activeCell.ingredientName.textColor = .lightGray
        }
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
}
