//
//  ViewController.swift
//  mvpQuotesProject
//
//  Created by Saber on 12/05/2021.
//

import UIKit

protocol viewProtocol: AnyObject {
    
}

class HomeViewController: UIViewController {

    @IBOutlet private weak var quotesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCell()
        let quotesRequest = QuotesRequest()
        quotesRequest.retrieveAllQuotes{
            responce in
            switch responce{
            case .success(let quotes):
                print(quotes.count)
            case .failure(let error):
                print(error.errorDescription)
            }
        }
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
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

//MARK: - tableView Delegate Configuration

extension HomeViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

