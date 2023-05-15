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
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    init(pairsOfCards: Int, createContent: (Int) -> CardContent) {
        cards = []
        for i in 0..<pairsOfCards {
            let content = createContent(i)
            cards.append(contentsOf: [Card(content: content), Card(content: content)])
        }
        
        shuffle()
    }
    
    struct Card: Identifiable {
        let id = UUID()
        let content: CardContent
        var isFaceUp = false
        var isMatched = false
        
        
        // MARK: - Bonus Time
        
        // this could give matching bonus points
        // if the user matches the card
        // before a certain amount of time passes during which the card is face up
        
        // can be zero which means "no bonus available" for this card
        var bonusTimeLimit: TimeInterval = 6
        
        // the last time this card was turned face up (and is still face up)
        var lastFaceUpDate: Date?
        
        // the accumulated time this card  has been face up in the past
        // (i.e. not including the current time it's been face up if it is currently so)
        var pastFaceUpTime: TimeInterval = 0
        
        // how long this card has ever been face up
        private var faceUpTime: TimeInterval {
            if let lastFaceUpDate = self.lastFaceUpDate {
                return pastFaceUpTime + Date().timeIntervalSince(lastFaceUpDate)
            } else {
                return pastFaceUpTime
            }
        }
        
        // how much time left before the bonus opportunity runs out
        var bonusTimeRemaining: TimeInterval {
            max(0, bonusTimeLimit - faceUpTime)
        }
        
        // percentage of the bonus time remaining
        var bonusRemainig: Double {
            (bonusTimeLimit > 0 && bonusTimeRemaining > 0) ? bonusTimeRemaining / bonusTimeLimit : 0
        }
        
        // whether the card was matched during the bonus time period
        var hasEarnedBonus: Bool {
            isMatched && bonusTimeRemaining > 0
        }
        
        // wether we are currently face up, unmatched and have not yet used up the bonus window
        var isComingBonusTime: Bool {
            isFaceUp && !isMatched && bonusTimeRemaining > 0
        }
        
        // called when the transitions to face up state
        private mutating func startUsingBonusTime() {
            if isComingBonusTime, lastFaceUpDate == nil {
                lastFaceUpDate = Date()
            }
        }
        
        // called when the card goes back face up down (or gets matched)
        private mutating func stopUsingBonusTime() {
            pastFaceUpTime = faceUpTime
            self.lastFaceUpDate = nil
        }
    }
}


