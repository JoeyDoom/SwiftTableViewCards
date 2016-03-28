//
//  CardDataSource.swift
//  CardTest
//
//  Created by Joey Gordon on 3/22/16.
//  Copyright © 2016 The Black Axe. All rights reserved.
//

import Foundation

class CardDataSource {
    var cards:[Card]
    var cards2:[Card]
    
    init() {
        cards = []
        let card1 = Card(title: "Naptown", content: "This plane is wiggling a lot. I hope that I don't spew everywhere.")
        cards.append(card1)
        
        let card2 = Card(title: "Worldwide What", content: "It was bus #55")
        cards.append(card2)
        
        cards2 = []
        let card3 = Card(title: "Chad Sexton", content: "Has Very Cool Drums")
        cards2.append(card3)
    }
    
    func getCards() -> [[Card]] {
        return [cards, cards2]
    }
    
}