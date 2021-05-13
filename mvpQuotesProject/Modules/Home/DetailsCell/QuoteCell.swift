//
//  QuoteCell.swift
//  mvpQuotesProject
//
//  Created by Saber on 13/05/2021.
//

import UIKit

class QuoteCell: UITableViewCell {
    
    @IBOutlet private weak var quoteLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func  configureQuoteLabel(quote: String){
        quoteLabel.text = quote
    }
    
}
