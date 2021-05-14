//
//  Quote.swift
//  mvpQuotesProject
//
//  Created by Saber on 13/05/2021.
//

import Foundation
/*
 {
 a = "John Wooden";
 h = "<blockquote>&ldquo;Consider the rights of others before your own feelings, and the feelings of others before your own rights.&rdquo; &mdash; <footer>John Wooden</footer></blockquote>";
 q = "Consider the rights of others before your own feelings, and the feelings of others before your own rights.";
},
 {
 a = "Les Brown";
 h = "<blockquote>&ldquo;Accept responsibility for your life. Know that it is you who will get you where you want to go, no one else.&rdquo; &mdash; <footer>Les Brown</footer></blockquote>";
 q = "Accept responsibility for your life. Know that it is you who will get you where you want to go, no one else.";
},
 {
 a = "Genghis Khan";
 h = "<blockquote>&ldquo;If you're afraid - don't do it, - if you're doing it - don't be afraid! &rdquo; &mdash; <footer>Genghis Khan</footer></blockquote>";
 q = "If you're afraid - don't do it, - if you're doing it - don't be afraid! ";
},
 */
struct Quote: Decodable{
    let author: String
    let quote: String

    enum CodingKeys: String, CodingKey {
        case author = "a"
        case quote = "q"
    }
    
}
