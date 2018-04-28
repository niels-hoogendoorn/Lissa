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
    
    @IBOutlet weak var questionLabel: UILabel!
    // MARK: - TableView
    
    
    // MARK: - General
    
    var recipe: Recipe!
    var ingredients: [Ingredient]?
    var gradientLayer: CAGradientLayer!
    
    var prepTextAvailable: Bool = false
    
    override func viewDidLoad() {
        displayData()
        gradientLayer = createGradientLayer(imageView: recipeImageView)
        recipeImageView.layer.addSublayer(gradientLayer)
        tableView.layoutIfNeeded()
    }
    
    func displayData() {
        prepTextAvailable = recipe.preparationText != nil || recipe.preparationText != ""
        loadImageInView(imageUrl: recipe.imageUrl, view: recipeImageView)
        titleLabel.text = recipe.title
        personLabel.text = "\(recipe.numberOfPersons as Int) person(s)"
        personLabel.textColor = Constants.lissaGray
        timeLabel.text = "\(recipe.minutes as Int) minutes"
        timeLabel.textColor = Constants.lissaGray
        questionLabel.text = .whatDoYouNeed
        questionLabel.textColor = Constants.lissaDarkGray
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
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 74
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {        
        let buttonViewHeight: CGFloat = 50
        let footerView = UIView(frame: .zero)
        let button = UIButton(frame: .zero)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        footerView.addSubview(button)
        
        footerView.backgroundColor = .white
        footerView.heightAnchor.constraint(equalToConstant: buttonViewHeight + 24).isActive = true
        
        button.setTitle(.differentRecipe, for: .normal)
        button.setImage(#imageLiteral(resourceName: "ic_repeat"), for: .normal)
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 16, 0, 0);
        button.backgroundColor = Constants.lissaPink
        button.layer.cornerRadius = 4
        
        button.leftAnchor.constraint(equalTo: footerView.leftAnchor, constant: 16).isActive = true
        button.rightAnchor.constraint(equalTo: footerView.rightAnchor, constant: -16).isActive = true
        button.topAnchor.constraint(equalTo: footerView.topAnchor, constant: 16).isActive = true
        button.bottomAnchor.constraint(equalTo: footerView.bottomAnchor, constant: -16).isActive = true
        
        return footerView
    }
    
}
