//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 17.05.2023.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    @Published private(set) var emojiArt: EmojiArtModel {
        didSet {
            if emojiArt.background != oldValue.background {
                updateBackgroundImageData()
            }
        }
    }
    
    init() {
        emojiArt = EmojiArtModel()
        emojiArt.addEmoji("1", at: (-400, 0), size: 80)
        emojiArt.addEmoji("9", at: (0, 400), size: 120)
    }
    
    var emojis: [EmojiArtModel.Emoji] { emojiArt.emojis }
    var background: EmojiArtModel.Background {emojiArt.background }
    
    @Published var backgroundImage: UIImage?
    
    private func updateBackgroundImageData() {
        backgroundImage = nil
        
        switch emojiArt.background {
        case.url(let url):
            let imageData = try? Data(contentsOf: url)
            if imageData != nil {
                backgroundImage = UIImage(data: imageData!)
            }
        case .imageData(let data):
            backgroundImage = UIImage(data: data)
        case .blank:
            break
        }
    }
    
    // MARK: - Intents
    func setBackground(_ background: EmojiArtModel.Background) {
        emojiArt.background = background
        print("background set to \(background)")
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
