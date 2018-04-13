//
//  NetworkRouter.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 10/04/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> ()

protocol NetworkRouter: class {
    
    associatedtype EndPoint: EndPointType
    
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
}
