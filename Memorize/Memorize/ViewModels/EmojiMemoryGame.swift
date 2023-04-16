//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚐", "🚗", "🏎", "🚒", "🛵", "🚕", "🚎", "🚛", "🚑", "🚌", "🚚", "🚙", "🏍",
                         "🚓", "🛻", "🛺", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(pairsOfCards: 12) { i in
            emojis[i]
        }
    }
    
    private var model = createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
}

