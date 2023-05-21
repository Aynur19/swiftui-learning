//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 17.05.2023.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    @Published private(set) var emojiArt: EmojiArtModel
    
    init() {
        emojiArt = EmojiArtModel()
    }
    
    var emojis: [EmojiArtModel.Emoji] { emojiArt.emojis }
    var background: EmojiArtModel.Background {emojiArt.background }
    
    
    // MARK: - Intents
    func setBackground(_ background: EmojiArtModel.Background) {
        emojiArt.background = background
    }
    
    func addEmoji(_ content: String, at location: (x: Int, y: Int), size: CGFloat) {
        emojiArt.addEmoji(content, at: location, size: Int(size))
    }
    
    func moveEmoji(_ emoji: EmojiArtModel.Emoji, by offset: CGSize) {
        if let idx = emojiArt.emojis.index(matching: emoji) {
            emojiArt.emojis[idx].x += Int(offset.width)
            emojiArt.emojis[idx].y += Int(offset.height)
        }
    }
    
    func scaleEmoji(_ emoji: EmojiArtModel.Emoji, by scale: CGFloat) {
        if let idx = emojiArt.emojis.index(matching: emoji) {
            let newSize = Int((CGFloat(emojiArt.emojis[idx].size) * scale).rounded(.toNearestOrAwayFromZero))
            emojiArt.emojis[idx].size = newSize
        }
    }
}
