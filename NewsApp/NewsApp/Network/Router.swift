//
//  Router.swift
//  NewsApp
//
//  Created by ToqaMohsen on 8/1/19.
//  Copyright © 2019 Toqa. All rights reserved.
//

import Foundation


enum Router {
    case search(query: String, page: Int)
}

extension Router: TargetType {
    var baseURL: String {
        return EndPoint.baseURL
    }
    
    var path: String {
        switch self {
        case .search(_, _):
            return EndPoint.search
        }
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .search(_, _):
            return .get
        }
    }
    
    var parameters: [String : Any]? {
        switch self {
        case .search(let query, let page):
            return [
                "query": query,
                "page":  page
            ]
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .search(_, _):
            return [
                "Content-Type": "application/json"
            ]
        }
    }
    
    var encoding: ParameterEncoding {
        return URLEncoding.default
    }
}
