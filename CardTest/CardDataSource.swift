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
    var cards3:[Card]
    var cardshead:[Card]
    
    init() {
        // header section
        cardshead = []
        let cardhead = Card(title: "This Big Title", content: "who cares", style: "header")
        cardshead.append(cardhead)
        
        // section 1
        cards = []
        let card1 = Card(title: "Naptown", content: "This plane is wiggling a lot. I hope that I don't spew everywhere.")
        cards.append(card1)
        
        let card2 = Card(title: "Worldwide What", content: "It was bus #55")
        cards.append(card2)
        
        // section 2
        cards2 = []
        let card3 = Card(title: "Chad Sexton", content: "Has Very Cool Drums")
        cards2.append(card3)
        
        let card6 = Card(title: "I needed another", content: "Whatever")
        cards2.append(card6)
        
        // section 3
        cards3 = []
        let card4 = Card(title: "Leopard Spots", content: "Make for a very comfortable chair")
        cards3.append(card4)
        
        let card5 = Card(title: "Alice Copper", content: "Alice Cooper has a sword")
        cards3.append(card5)
        
        let card7 = Card(title: "Wiggles", content: "Who Cares")
        cards3.append(card7)
    }
    
    func getCards() -> [[Card]] {
        return [cardshead, cards, cards2, cards3]
    }
    
}