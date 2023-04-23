//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemorizeGame<String>.Card
    
    @Published private var model = createMemoryGame()
    private static var emojis = MemorizeGameData.getEmojis(emojiType: .smileyFace())
    
    private static func createMemoryGame() -> MemorizeGame<String> {
        MemorizeGame<String>(pairsOfCards: 10) { i in
            emojis[i]
        }
    }
    
    var cards: [Card] {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}

