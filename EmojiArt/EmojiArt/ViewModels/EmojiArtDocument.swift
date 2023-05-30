//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 17.05.2023.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    
    init() {
        emojiArt = EmojiArtModel()
    }
    
    @Published private(set) var emojiArt: EmojiArtModel {
        didSet {
            if emojiArt.background != oldValue.background {
                updateBackgroundImageData()
            }
        }
    }
    
    var emojis: [EmojiArtModel.Emoji] { emojiArt.emojis }
    var background: EmojiArtModel.Background {emojiArt.background }
    
    @Published var backgroundImage: UIImage?
    
    enum BackgroundFetchStatus {
        case idle
        case fetching
    }
    
    @Published var backgroundFetchStatus = BackgroundFetchStatus.idle
    
    private func updateBackgroundImageData() {
        backgroundImage = nil
        
        switch emojiArt.background {
        case.url(let url):
            backgroundFetchStatus = .fetching
            DispatchQueue.global(qos: .userInitiated).async {
                let imageData = try? Data(contentsOf: url)
                
                DispatchQueue.main.async { [weak self] in
                    if self?.emojiArt.background == EmojiArtModel.Background.url(url) {
                        self?.backgroundFetchStatus = .idle
                        if imageData != nil {
                            self?.backgroundImage = UIImage(data: imageData!)
                        }
                    }
                }
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
