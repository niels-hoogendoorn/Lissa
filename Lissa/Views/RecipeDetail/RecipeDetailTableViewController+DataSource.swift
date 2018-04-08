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
    
    func fetchData() {
        loadImageInView(imageUrl: recipe.imageUrl, view: recipeImageView)
        titleLabel.text = recipe.title
        personLabel.text = "\(recipe.numberOfPersons)"
        timeLabel.text = "\(recipe.minutes)"
    }
    
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
}
