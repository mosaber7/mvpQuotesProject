//
//  QuotesRequest.swift
//  mvpQuotesProject
//
//  Created by Saber on 12/05/2021.
//

import Foundation
import Alamofire

class QuotesRequest{
    
    func retrieveAllQuotes(_ compeltion: @escaping (Result<[Quote], AFError>)-> Void){
        let getAllQuotesRoute = QuotesRouter.allQoutes
        
        AF.request(getAllQuotesRoute).responseDecodable { (responce: DataResponse<[Quote], AFError>) in
            switch responce.result{
            case .success(let quotes):
                compeltion(.success(quotes))
            case .failure(let error):
                compeltion(.failure(error))
                
            }
        }
        
       
        
    }
    
}
