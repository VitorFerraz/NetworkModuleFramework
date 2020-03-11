//
//  ParameterEncoderProtocol.swift
//  NetworkModule
//
//  Created by Vitor Ferraz Varela on 10/03/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation

protocol ParameterEncoderProtocol {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}
