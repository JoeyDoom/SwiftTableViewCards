//
//  CardDataSource.swift
//  CardTest
//
//  Created by Joey Gordon on 3/22/16.
//  Copyright © 2016 The Black Axe. All rights reserved.
//

import Foundation

//class Section {
//    
//    var cards: [Card]
//    
//    init(cards: [Card]) {
//        self.cards = cards
//    }
//    
//}

class Card {
    
    // set up the variables
    var title: String!
    var content: String
    
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
    
}