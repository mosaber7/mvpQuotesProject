//
//  HomePresenter.swift
//  mvpQuotesProject
//
//  Created by Saber on 13/05/2021.
//

import Foundation
protocol presenterProtocol {
    var quotesCount: Int {get}
    func quote(at index: Int) -> Quote
    
}

class HomePresenter{
    
    private var quotes: [Quote] = [Quote]()
    
}
extension HomePresenter: presenterProtocol{
    var quotesCount: Int {
        quotes.count
    }
    
    func quote(at index: Int)-> Quote {
        quotes[index]
    }
    
    
}
