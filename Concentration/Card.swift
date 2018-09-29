//
//  Card.swift
//  Concentration
//
//  Created by Thomas Hill on 9/29/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var indetifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.indetifier = Card.getUniqueIdentifier()
    }
    
}


