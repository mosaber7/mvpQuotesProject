//
//  HomeRoutes.swift
//  mvpQuotesProject
//
//  Created by Saber on 14/05/2021.
//

import Foundation
import UIKit

enum HomeRoutes: Route{
    
    
 case details(Quote)
    
    var destination: UIViewController{
        switch self {
        case .details(let quote):
            let quoteDetailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "details") as! QuoteDetailsViewController
            quoteDetailsVC.presenter = DetailsPresenter(view: quoteDetailsVC, quote: quote)
            return quoteDetailsVC
        
            
        }
    }
    
    var style: NavigationStyle {
        
        switch self {
        case .details:
            return .present
       
        }
    }
    
    
}
