//
//  RecipeDetailTableViewController+DataSource.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 15/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

extension RecipeDetailTableViewController {
    
    func loadImageInView(imageUrl: String, view: UIImageView) {
        guard let url = URL(string: imageUrl) else { return }
        
        view.af_setImage(
            withURL: url,
            placeholderImage: nil,
            filter: nil,
            progress: nil,
            progressQueue: DispatchQueue.global(qos: .background),
            imageTransition: UIImageView.ImageTransition.crossDissolve(0.3),
            runImageTransitionIfCached: false
        ) { (_) -> Void in
            self.imageLoaderIndicator.stopAnimating()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let ingredients = self.ingredients else { return 0 }
        return ingredients.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath)
        
        guard
            let ingredientCell = cell as? IngredientCell,
            let ingredients = self.ingredients
        else { return cell }
        
        let ingredient = ingredients[indexPath.row]
        
        ingredientCell.checkButton.setImage(ingredient.checked ? #imageLiteral(resourceName: "ic_checkmark") : #imageLiteral(resourceName: "ic_unchecked"), for: .normal)
        ingredientCell.ingredientName.textColor = ingredient.checked ? .lightGray : Constants.lissaDarkGray
        ingredientCell.ingredientName.text = ingredient.title
        
        return ingredientCell
    }
}
