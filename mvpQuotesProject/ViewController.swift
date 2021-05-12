//
//  ViewController.swift
//  mvpQuotesProject
//
//  Created by Saber on 12/05/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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

