//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 13.04.2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let smiles1 = ["😀", "🥹", "😅", "😂", "☺️", "😇", "🙂", "🙃", "😍", "🤪", "😎", "😪", "😴", "😵‍💫", "😷"]
    static let smiles2 = ["🤢", "😈", "👿", "🤡", "👻", "☠️", "👽", "🎃", "🤖", "👾", "💩", "👺", "👹", "💀"]
    static let cats = ["😺", "😸", "😹", "😻", "😼", "😽", "🙀", "🙀", "😿", "😾"]
    
//    static let flags = []
    static let emojis = ["😀", "🥹", "😅", "😂", "☺️", "😇", "🙂", "🙃", "😍", "🤪", "😎", "😪", "😴", "😵‍💫", "😷", "🚐", "🚗", "🏎", "🚒", "🛵", "🚕", "🚎", "🚛", "🚑", "🚌", "🚚", "🚙", "🏍",
                         "🚓", "🛻", "🛺", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(pairsOfCards: 12) { i in
            emojis[i]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

