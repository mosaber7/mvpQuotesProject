//
//  Route.swift
//  mvpQuotesProject
//
//  Created by Saber on 14/05/2021.
//

import Foundation
import UIKit

protocol Route {
    var destination: UIViewController{get}
    var style: NavigationStyle{get}
}

enum NavigationStyle{
    case present
    case push
}
