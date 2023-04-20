//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import Foundation


struct MemorizeGame<CardContent> where CardContent: Equatable {
    private(set) var cards: [Card]
    
    private var currentFirstFaceUpCardIdx: Int? {
        get { cards.indices.filter({ cards[$0].isFaceUp }).onlyItem }
        set { cards.indices.forEach { cards[$0].isFaceUp = ($0 == newValue) } }
    }
    
    mutating func choose(_ card: Card) {
        if let idx = cards.firstIndex(where: { $0.id == card.id }),
           !cards[idx].isFaceUp,
           !cards[idx].isMatched {
            if let potentialMatchIndex = currentFirstFaceUpCardIdx {
                if cards[idx].content == cards[potentialMatchIndex].content {
                    cards[idx].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                
                cards[idx].isFaceUp = true
            } else {
                currentFirstFaceUpCardIdx = idx
            }
        }
    }
    
    init(pairsOfCards: Int, createContent: (Int) -> CardContent) {
        cards = []
        
        for i in 0..<pairsOfCards {
            let content = createContent(i)
            cards.append(contentsOf: [Card(content: content), Card(content: content)])
        }
    }
    
    struct Card: Identifiable {
        let id = UUID()
        let content: CardContent
        var isFaceUp = false
        var isMatched = false
    }
}


