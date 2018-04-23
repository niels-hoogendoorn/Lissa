//
//  Recipe.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 05/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation

struct Recipe: Decodable {
    let id: Int!
    let title: String!
    let numberOfPersons: Int!
    let minutes: Int!
    let imageUrl: String!
    let ingredients: [Ingredient]?
    let preparationText: String?
    
    init(id: Int, title: String, numberOfPersons: Int, minutes: Int, imageUrl: String, ingredients: [Ingredient], preparationText: String) {
        self.id = id
        self.title = title
        self.numberOfPersons = numberOfPersons
        self.minutes = minutes
        self.imageUrl = imageUrl
        self.ingredients = ingredients
        self.preparationText = preparationText
    }
}
