//
//  QuotesRequest.swift
//  mvpQuotesProject
//
//  Created by Saber on 12/05/2021.
//

import Foundation
import Alamofire

class QuotesRequest{
    
    func retrieveAllQuotes(){
        let getAllQuotesRoute = QuotesRouter.allQoutes
        AF.request(getAllQuotesRoute).responseJSON { (responce) in
            switch responce.result{
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
            
        }
        
    }
    
}
