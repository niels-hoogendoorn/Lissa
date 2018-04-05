//
//  recipesJson.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 11/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation

class recipesJson {
    
    static let recipes: [Recipe] = [

        Recipe(id: 1, title: "Rijst met chorizo", numberOfPersons: 4, minutes: 30, imageUrl: "https://static.ah.nl/static/recepten/img_061470_890x594_JPG.jpg", ingredients: [Ingredient(title: "Rijst", checked: false), Ingredient(title: "Chorizo", checked: true)]),
        Recipe(id: 2, title: "Pasta met brocoli", numberOfPersons: 2, minutes: 20, imageUrl: "https://www.lekkerensimpel.com/wp-content/uploads/2015/09/IMG_2877.jpg", ingredients: [Ingredient(title: "Pasta", checked: false), Ingredient(title: "Broccoli", checked: true)]),
        Recipe(id: 3, title: "Boerenkool", numberOfPersons: 3, minutes: 35, imageUrl: "https://static.ah.nl/static/recepten/img_006188_890x594_JPG.jpg", ingredients: [Ingredient(title: "Aardappelen", checked: true), Ingredient(title: "Boerenkool", checked: false)])
    ]
}
