//
//  NewsEndpoint.swift
//  learnnewsapi
//
//  Created by Aswan Abidin on 19/08/21.
//

import Foundation

protocol APIBuilder {
    var urlRequest: URLRequest { get }
    var baseUrl: URL { get }
    var path: String { get }
    var apiKey: String { get }
}

enum NewsAPI {
    case getNews
}

extension NewsAPI: APIBuilder {
    
    var baseUrl: URL {
        switch self {
        case .getNews:
            return URL(string: "https://newsapi.org")!
        }
    }
    
    var urlRequest: URLRequest {
        var request = URLRequest(url: self.baseUrl.appendingPathComponent(self.path))
        request.addValue(self.apiKey, forHTTPHeaderField: "apiKey")
        request.addValue(self.country, forHTTPHeaderField: "country")
        return request
    }
    
    var path: String {
        return "/v2/top-headlines"
    }
    
    var apiKey: String {
        return "d5d789420e964caaa79fc15a662208c9"
    }
    
    var country: String {
        return "id"
    }
}
