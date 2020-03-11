//
//  RequesterError.swift
//  NetworkModule
//
//  Created by Vitor Ferraz Varela on 10/03/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation

enum RequesterError: String, CustomError {
    case parametersNil  = "Parameters were nil."
    case encodingFailed = "Parameters encoding failed."
    case missingURL     = "URL is nil."

    var description: String {
        return rawValue
    }
}
