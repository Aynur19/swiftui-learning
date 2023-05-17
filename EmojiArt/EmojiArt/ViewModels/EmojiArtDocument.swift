//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 17.05.2023.
//

import SwiftUI

class EmojiArtDocument {
    @Published private(set) var emojiArt: EmojiArtModel
    
    init() {
        emojiArt = EmojiArtModel()
    }
    
    var emojis: [EmojiArtModel.Emoji] { emojiArt.emojis }
    var background: EmojiArtModel.Background {emojiArt.background }
    
    
}
