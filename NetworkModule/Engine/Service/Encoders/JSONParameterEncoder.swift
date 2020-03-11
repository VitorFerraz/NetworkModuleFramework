//
//  JSONParameterEncoder.swift
//  NetworkModule
//
//  Created by Vitor Ferraz Varela on 10/03/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation

struct JSONParameterEncoder: ParameterEncoderProtocol {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do {
            let jsonData: Data = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonData

            if urlRequest.value(forHTTPHeaderField: NetworkConstants.HTTPHeaderField.contentType.rawValue) == nil {
                urlRequest.setValue(NetworkConstants.ContentType.json.rawValue, forHTTPHeaderField: NetworkConstants.HTTPHeaderField.contentType.rawValue)
            }
        } catch {
            throw RequesterError.encodingFailed
        }
    }
}
