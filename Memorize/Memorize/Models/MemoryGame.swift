//
//  CardModel.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import Foundation


struct Game<CardContent> {
    var cards: [Card]
    
    func choose(_ card: Card) {
        
    }
    
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
    }
}


