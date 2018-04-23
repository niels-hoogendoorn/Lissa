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

        Recipe(id: 1, title: "Rijst met chorizo", numberOfPersons: 4, minutes: 30, imageUrl: "https://static.ah.nl/static/recepten/img_061470_890x594_JPG.jpg", ingredients: [Ingredient(title: "Rijst", checked: false), Ingredient(title: "Chorizo", checked: true)], preparationText: """
    A NetworkRouter has an EndPoint which it uses to make requests and once the request is made it passes the response to the completion. I have added the cancel function as an extra nice to have but don’t go into its use. This function can be called at any time in the life cycle of a request and cancel it. This could prove to be very valuable if your application has an uploading or downloading task. We make use of an associatedtype here as we want our Router to be able to handle any EndPointType. Without the use of associatedtype the router would have to have a concrete EndPointType. For more on associatedtypes I suggest checking this post by NatashaTheRobot.
    
    Router
    Create a file named Router and place it inside the Service group. We declare a private variable task of type URLSessionTask. This task is essentially what will do all the work. We keep the variable private as we do not want anyone outside this class modifying our task.
    Request
    Here we create a URLSession using the shared session. This is the simplest way of creating a URLSession. But please bear in mind that it is not the only way. More complex configurations of a URLSession can be implemented using configurations that can change the behavior of the session. For more on this I would suggest taking some time to read this post.
    
    Here we create our request by calling buildRequest and giving it a route which is an EndPoint. This call is wrapped in a do-try-catch block as buildRequest because an error could be thrown by our encoders. We simply pass all response, data, and error to the completion.
    """),
        Recipe(id: 2, title: "Pasta met brocoli", numberOfPersons: 2, minutes: 20, imageUrl: "https://www.lekkerensimpel.com/wp-content/uploads/2015/09/IMG_2877.jpg", ingredients: [Ingredient(title: "Pasta", checked: false), Ingredient(title: "Broccoli", checked: true)], preparationText: "Create a file named Router and place it inside the Service group. We declare a private variable task of type URLSessionTask. This task is essentially what will do all the work. We keep the variable private as we do not want anyone outside this class modifying our task."),
        Recipe(id: 3, title: "Boerenkool", numberOfPersons: 3, minutes: 35, imageUrl: "https://static.ah.nl/static/recepten/img_006188_890x594_JPG.jpg", ingredients: [Ingredient(title: "Aardappelen", checked: true), Ingredient(title: "Boerenkool", checked: false), Ingredient(title: "Aardappelen", checked: true), Ingredient(title: "Boerenkool", checked: false), Ingredient(title: "Aardappelen", checked: true), Ingredient(title: "Boerenkool", checked: false), Ingredient(title: "Aardappelen", checked: true), Ingredient(title: "Boerenkool", checked: false), Ingredient(title: "Aardappelen", checked: true), Ingredient(title: "Boerenkool", checked: false), Ingredient(title: "Aardappelen", checked: true), Ingredient(title: "Boerenkool", checked: false)], preparationText: "")
    ]

}
