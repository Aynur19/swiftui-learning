//
//  EmojiArtModel.Background.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 16.05.2023.
//

import Foundation

extension EmojiArtModel {
    enum Background {
        case blank
        case url(URL)
        case imageData(Data)
    }
}
