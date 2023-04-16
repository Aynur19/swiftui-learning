//
//  CardModel.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import Foundation


struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    func choose(_ card: Card) {
        
    }
    
    init(pairsOfCards: Int, createContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for i in 0..<pairsOfCards {
            let content = createContent(i)
            cards.append(contentsOf: [Card(content: content), Card(content: content)])
        }
        
    }
    
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
    }
}


