//
//  EmojiArtModel.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 16.05.2023.
//

import Foundation

struct EmojiArtModel {
    var background: Background
    var emojis = [Emoji]()
    
    struct Background {
        let content: String
        var x: Int
        var y: Int
        var size: Int
    }
    
    enum Emoji {
        case blank
        case url
        case imageData
    }
}
