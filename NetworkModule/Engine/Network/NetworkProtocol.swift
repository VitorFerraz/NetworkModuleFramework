//
//  NetworkProtocol.swift
//  NetworkModule
//
//  Created by Vitor Ferraz Varela on 10/03/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation

typealias ResultCompletion<T> = (Result<T, Error>) -> Void

protocol NetworkProtocol {
    associatedtype S: Service
    func request<T: Decodable>(service: S, result: @escaping ResultCompletion<T>)
}
