//
//  ParameterEncoding.swift
//  Lissa
//
//  Created by Niels Hoogendoorn on 10/04/2018.
//  Copyright © 2018 Niels Hoogendoorn. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest,
                       with parameters: Parameters) throws
}

public enum NetworkError: String, Error {
    case parametersNil = "Parameters were nil."
    case encodingFailed = "Parameter encoding failed."
    case missingURL = "URL is nil."
}
