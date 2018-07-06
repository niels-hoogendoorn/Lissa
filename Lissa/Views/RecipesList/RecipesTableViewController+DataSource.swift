//
//  RecipesTableViewController+DataSource.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 05/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage

extension RecipesTableViewController {
    
    func fetchRecipes() {
        recipes = recipesJson.recipes
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)

        guard let recipeCell = cell as? RecipeCell else { return cell }
        
        guard
            let title = recipes[indexPath.row].title,
            let name = recipes[indexPath.row].userName,
            let numberOfPersons = recipes[indexPath.row].numberOfPersons,
            let minutes = recipes[indexPath.row].minutes,
            let imageUrl = recipes[indexPath.row].imageUrl
        else { return UITableViewCell() }
        
//        loadImageInView(imageUrl: imageUrl, cell: recipeCell)
        recipeCell.recipeImageView.image = #imageLiteral(resourceName: "sample1")
        recipeCell.nameLabel.text = "\(name)"
        recipeCell.recipeInfoLabel.text = "\(numberOfPersons) personen • \(minutes) minuten"
//        recipeCell.personLabel.text = "\(numberOfPersons) persons"
//        recipeCell.timeLabel.text = "\(minutes) minutes"
        recipeCell.titleLabel.text = "\(title)"
        
        return recipeCell
    }
    
    func loadImageInView(imageUrl: String, cell: UITableViewCell) {
        guard
            let url = URL(string: imageUrl),
            let recipeCell = cell as? RecipeCell
        else { return }
        
        recipeCell.recipeImageView.af_setImage(
            withURL: url,
            placeholderImage: nil,
            filter: nil,
            progress: nil,
            progressQueue: DispatchQueue.global(qos: .background),
            imageTransition: UIImageView.ImageTransition.crossDissolve(0.3),
            runImageTransitionIfCached: false
        ) { (_) -> Void in
            recipeCell.imageLoaderIndicator.stopAnimating()
        }
    }
}
