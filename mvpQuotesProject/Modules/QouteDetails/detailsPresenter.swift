//
//  detailsPresenter.swift
//  mvpQuotesProject
//
//  Created by Saber on 14/05/2021.
//

import Foundation

protocol DetailsPresenterProtocol {
    
}

class DetailsPresenter: DetailsPresenterProtocol{
    private var quote : Quote
    weak var ddetailsView: DetailsViewProtocol?
    
    init(view: DetailsViewProtocol, quote: Quote) {
        self.ddetailsView = view
        self.quote = quote
        self.ddetailsView?.configureLabel(quote: quote.quote)
    }
    
}
