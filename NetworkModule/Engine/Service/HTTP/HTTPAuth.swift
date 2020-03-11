//
//  HTTPAuth.swift
//  NetworkModule
//
//  Created by Vitor Ferraz Varela on 10/03/20.
//  Copyright © 2020 Vitor Ferraz Varela. All rights reserved.
//

import Foundation

public enum HTTPAuth {
    case header(HTTPHeaders)
    case url(Parameters)
}
