//
//  RecipeSelectorViewController.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 04/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation
import UIKit

class RecipesTableViewController: UITableViewController {
    
    @IBOutlet weak var recipeGeneratorContainer: UIView!
    @IBOutlet weak var recipeGeneratorButton: UIView!
    
    var recipes: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = Constants.lissaBlue
        recipeGeneratorButton.backgroundColor = Constants.lissaPink
        
        recipeGeneratorButton.layer.cornerRadius = 4
        fetchRecipes()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let cell = cell as? RecipeCell else { return }
        
        cell.backgroundColor = .clear
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 16
    }
}
