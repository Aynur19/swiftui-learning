//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model = createMemoryGame()
    private static var emojis: [String] = MemorizeGameData.getEmojis(emojiType: .smileyFace())
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(pairsOfCards: 12) { i in
            emojis[i]
        }
    }
    
    var cards: [MemoryGame<String>.Card] {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

