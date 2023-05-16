//
//  EmojiArtModel.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 16.05.2023.
//

import Foundation

struct EmojiArtModel {
    var background = Background.blank
    var emojis = [Emoji]()
    private var uniqueEmojiId = 0
    
    init() { }
    
    struct Emoji {
        let content: String
        var x: Int
        var y: Int
        var size: Int
        let id: Int
        
        fileprivate init(content: String, x: Int, y: Int, size: Int, id: Int) {
            self.content = content
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    mutating func addEmoji(_ content: String, at location: (x: Int, y: Int), size: Int) {
        uniqueEmojiId += 1
        emojis.append(Emoji(content: content, x: location.x, y: location.y, size: size, id: uniqueEmojiId))
    }
}
