//
//  HomePresenter.swift
//  mvpQuotesProject
//
//  Created by Saber on 13/05/2021.
//

import Foundation
protocol presenterProtocol {
    var quotesCount: Int {get}
    func quote(at index: Int) -> String
    func selectQuote(at index: Int)
    func retrieveQuotes()
    
}

class HomePresenter{
    
    private var quotes: [Quote] = [Quote]()
    
    weak var view : viewProtocol?
    
    init(view: viewProtocol) {
        self.view = view
    }
    
}
extension HomePresenter: presenterProtocol{
    func selectQuote(at index: Int) {
        
        let quote = quotes[index]
        let quoteDetailsRoute = HomeRoutes.details(quote)
        self.view?.navigate(to: quoteDetailsRoute)
        
    }
    
    func retrieveQuotes() {
        let quotesRequest = QuotesRequest()
        quotesRequest.retrieveAllQuotes{
            [weak self] responce in
            switch responce{
            case .success(let quotes):
                self?.quotes = quotes
                self?.view?.refresh()
            case .failure(let error):
                print("the network error: \(error.errorDescription)")
            }
        }
    }
    
    var quotesCount: Int {
        quotes.count
    }
    
    func quote(at index: Int)-> String {
        quotes[index].quote
    }
    
    
}
