//
//  Recipe.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 05/03/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation

struct Recipe: Decodable {
    let title: String!
    let numberOfPersons: Int!
    let minutes: Int!
    let imageUrl: String!
    
    init(title: String, numberOfPersons: Int, minutes: Int, imageUrl: String) {
        self.title = title
        self.numberOfPersons = numberOfPersons
        self.minutes = minutes
        self.imageUrl = imageUrl
    }
}
