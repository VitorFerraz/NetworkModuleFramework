//
//  HTTPTask.swift
//  NetworkModule
//
//  Created by Vitor Ferraz Varela on 10/03/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation

public typealias Parameters  = [String: Any]
public typealias HTTPHeaders = [String: String]

public enum HTTPTask: Equatable {
   public static func == (lhs: HTTPTask, rhs: HTTPTask) -> Bool {
        switch (lhs, rhs) {
        case (.request, .request):
            return true
        case (.requestWith, .requestWith):
            return true
        case (.requestWithAdditional, .requestWithAdditional):
            return true
        default:
            return false
        }
    }

    case request
    case requestWith(urlParameters: Parameters?, bodyParameters: Parameters?)
    case requestWithAdditional(auth: HTTPAuth?, urlParameters: Parameters?, bodyParameters: Parameters?)
}
