//
//  EndPointType.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 10/04/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
    
}
