//
//  CardModel.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import Foundation


struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: [Card]
    
    private var currentFirstFaceUpCardIdx: Int?
    
    mutating func choose(_ card: Card) {
        if let idx = cards.firstIndex(where: { $0.id == card.id }),
           !cards[idx].isFaceUp,
           !cards[idx].isMatched {
            if let potentialMatchIndex = currentFirstFaceUpCardIdx {
                if cards[idx].content == cards[potentialMatchIndex].content {
                    cards[idx].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                
                currentFirstFaceUpCardIdx = nil
            } else {
                for i in cards.indices {
                    cards[i].isFaceUp = false
                }
                
                currentFirstFaceUpCardIdx = idx
            }

            cards[idx].isFaceUp.toggle()
        }
    }
    
    init(pairsOfCards: Int, createContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
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


