//
//  ViewController.swift
//  mvpQuotesProject
//
//  Created by Saber on 12/05/2021.
//

import UIKit

protocol viewProtocol: NavigationRoute,AnyObject {
    func refresh()
}

class HomeViewController: UIViewController {

    @IBOutlet private weak var quotesTableView: UITableView!
    
    var presenter: presenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = HomePresenter(view: self)
        
        configureCell()
        presenter?.retrieveQuotes()
        
    }


}

//MARK: - Cell Configurator
extension HomeViewController{
  func configureCell(){
        let quoteNib = UINib(nibName: "quote", bundle: nil)
        quotesTableView.register(quoteNib, forHeaderFooterViewReuseIdentifier: "quote")
    }
}
//MARK: -UITableView DAta Source configuration
extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.quotesCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = quotesTableView.dequeueReusableCell(withIdentifier: "quote") as? QuoteCell
        let quote = presenter?.quote(at: indexPath.row) ?? ""
        cell?.configureQuoteLabel(quote: quote)
        return cell!
    }
    
    
}

//MARK: - tableView Delegate Configuration

extension HomeViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.selectQuote(at: indexPath.row)
    }
}

//MARK: -

extension HomeViewController: viewProtocol{
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.presenter?.selectQuote(at: indexPath.row)
    }
    func refresh() {
        quotesTableView.reloadData()
    }
    
    
}

