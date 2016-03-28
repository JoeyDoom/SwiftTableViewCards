//
//  Card.swift
//  CardTest
//
//  Created by Joey Gordon on 3/22/16.
//  Copyright © 2016 The Black Axe. All rights reserved.
//
//  This file sets up the Card data type.

import Foundation

class Card {
    
    // set up the variables
    var title: String
    var content: String
    var style: String?
    
    init(title: String, content: String, style: String? = "normal") {
        self.title = title
        self.content = content
        self.style = style
    }
    
}