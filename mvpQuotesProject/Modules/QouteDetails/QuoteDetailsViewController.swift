//
//  quoteDetailsViewController.swift
//  mvpQuotesProject
//
//  Created by Saber on 14/05/2021.
//

import UIKit

protocol DetailsViewProtocol: AnyObject {
    func configureLabel(quote: String)
}
class QuoteDetailsViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    
    var presenter : DetailsPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
extension QuoteDetailsViewController: DetailsViewProtocol{
    func configureLabel(quote: String) {
        quoteLabel.text = quote
    }
}
