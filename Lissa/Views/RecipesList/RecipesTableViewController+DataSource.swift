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
            let numberOfPersons = recipes[indexPath.row].numberOfPersons,
            let minutes = recipes[indexPath.row].minutes,
            let imageUrl = recipes[indexPath.row].imageUrl
        else { return cell }
        
        loadImage(imageUrl: imageUrl, cell: recipeCell)
        recipeCell.personLabel.text = "\(numberOfPersons) persons"
        recipeCell.timeLabel.text = "\(minutes) minutes"
        recipeCell.titleLabel.text = "\(title)"
        
        return recipeCell
    }
    

    
    
    func loadImage(imageUrl: String, cell: RecipeCell) {
        guard let url = URL(string: imageUrl) else { return }
        
        cell.imageViewer.af_setImage(
            withURL: url,
            placeholderImage: nil,
            filter: nil,
            progress: nil,
            progressQueue: DispatchQueue.global(qos: .background),
            imageTransition: UIImageView.ImageTransition.crossDissolve(0.3),
            runImageTransitionIfCached: false
        ) { (_) -> Void  in
            cell.imageLoaderIndicator.stopAnimating()
        }
    }
}
