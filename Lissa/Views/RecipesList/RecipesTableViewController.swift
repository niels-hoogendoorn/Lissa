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
    @IBOutlet weak var recipeGeneratorButton: UIButton!
    @IBOutlet weak var recipeFavoritesButton: UIButton!
    
    @IBOutlet weak var profileButtonitem: UIBarButtonItem!
    @IBOutlet weak var addButtonItem: UIBarButtonItem!
    @IBOutlet weak var searchButtonItem: UIBarButtonItem!
    @IBOutlet weak var logoButtonItem: UIBarButtonItem!
    
    var recipes: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = Constants.lissaBlue
        
        setButton(recipeGeneratorButton)
        setButton(recipeFavoritesButton)
        
        setNavigationStyle()
        
        fetchRecipes()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let cell = cell as? RecipeCell else { return }
        
        cell.backgroundColor = .clear
    }
    
    fileprivate func setLogoButton() {
        let logoItemView = UIView(frame: .zero)
        logoItemView.translatesAutoresizingMaskIntoConstraints = false
        
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        logoItemView.addSubview(label)
        label.text = "Lissa"
        label.textColor = Constants.lissaPink
        label.numberOfLines = 1
        label.leftAnchor.constraint(equalTo: logoItemView.leftAnchor).isActive = true
        label.topAnchor.constraint(equalTo: logoItemView.topAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: logoItemView.bottomAnchor).isActive = true
        
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        logoItemView.addSubview(image)
        image.image = #imageLiteral(resourceName: "ic_lissa_image")
        image.contentMode = .center
        image.centerYAnchor.constraint(equalTo: label.centerYAnchor).isActive = true
        image.leftAnchor.constraint(equalTo: label.rightAnchor, constant: 8).isActive = true
        image.rightAnchor.constraint(equalTo: logoItemView.rightAnchor).isActive = true
        logoButtonItem.customView = logoItemView
    }
    
    fileprivate func setProfileButton() {
        let profileView = UIImageView(frame: .zero)
        var newImage = #imageLiteral(resourceName: "dummy_profile_pic").af_imageAspectScaled(toFill: CGSize(width: 24, height: 24))
        newImage = newImage.af_imageRoundedIntoCircle()
        profileView.layer.cornerRadius = 12
        profileView.image = newImage
        profileButtonitem.customView = profileView
    }
    
    func setNavigationStyle() {
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = Constants.lissaDarkGray
        navigationController?.navigationItem.backBarButtonItem?.title = " "

        UIApplication.shared.statusBarStyle = .default
        
        setProfileButton()
        
        setLogoButton()
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard
            let identifier = segue.identifier,
            identifier == "to_recipe_detail",
            let destination = segue.destination as? RecipeDetailTableViewController
        else { return }
        
        if let cell = sender as? RecipeCell,
            let indexPath = tableView.indexPath(for: cell) {
            let chosenRecipe = recipes[indexPath.row]
            destination.recipe = chosenRecipe
        }
    }
    
    func setButton(_ button: UIButton) {
//        button.titleLabel?
        button.backgroundColor = Constants.lissaPink
        button.layer.cornerRadius = 4
        button.setTitleColor(.white, for: .normal)
    }
}
