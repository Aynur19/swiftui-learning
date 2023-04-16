//
//  CardModel.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import Foundation


struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    mutating func choose(_ card: Card) {
        let idx = cards.firstIndex { item in
            item.id == card.id
        }
        
        if idx != nil {
            cards[idx!].isFaceUp.toggle()
        }
        
        print(cards)
    }
    
    init(pairsOfCards: Int, createContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for i in 0..<pairsOfCards {
            let content = createContent(i)
            cards.append(contentsOf: [Card(content: content), Card(content: content)])
        }
    }
    
    
    struct Card: Identifiable {
        var id = UUID()
        var isFaceUp = true
        var isMatched = false
        var content: CardContent
    }
}


