//
//  Ingredients.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 13/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation

struct Ingredient: Decodable {
    let title: String!
    let checked: Bool!
    
    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
    
}
