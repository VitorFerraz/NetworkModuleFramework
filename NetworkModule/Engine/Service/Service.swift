//
//  Service.swift
//  NetworkModule
//
//  Created by Vitor Ferraz Varela on 10/03/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation

public protocol Service {
    var baseURL: URL { get }
    var path: String { get }
    var version: String? { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
    var auth: HTTPAuth? { get }
    var decoder: JSONDecoder { get }
    var timeoutInterval: RequestTimeInterval { get }
    func errorFor(statusCode: Int) -> CustomError?
    func errorFor(data: Data) -> CustomError

}

extension Service {
    var timeoutInterval: RequestTimeInterval {
        return  RequestTimeInterval.long
    }
}
