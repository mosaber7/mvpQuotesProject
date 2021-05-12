//
//  QuotesRouter.swift
//  mvpQuotesProject
//
//  Created by Saber on 12/05/2021.
//

import Foundation
import Alamofire


enum QuotesRouter: URLRequestConvertible{
    
    static let baseURL = "https://zenquotes.io/api"
    case allQoutes
    
    
    var path: String{
        switch self {
        case .allQoutes:
            return "/quotes"
        }
    }
    
    var parameters: [String: Any]?{
        switch self {
        case .allQoutes:
            return nil
        }
    }
    
    var headers: [String: String]{
        switch self {
        case .allQoutes:
            return [:]
        }
    }
    var encoding: ParameterEncoding{
        switch self {
        case .allQoutes:
            return JSONEncoding.default
            
        }
    }
    
    
    var httpMethod: HTTPMethod{
        switch self {
        case .allQoutes:
            return .get
            
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let urlString = QuotesRouter.baseURL + self.path
        let url = URL(string: urlString)!
        
        var request = URLRequest(url: url)
        request.method = self.httpMethod
        request.headers = HTTPHeaders(headers)
        
        return try! encoding.encode(request, with: parameters)
    }
    
    
    
}
