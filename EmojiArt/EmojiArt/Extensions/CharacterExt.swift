//
//  CharacterExt.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 30.05.2023.
//

extension Character {
    var isEmoji: Bool {
        if let firstScalar = unicodeScalars.first, firstScalar.properties.isEmoji {
            return (firstScalar.value >= 0x238d || unicodeScalars.count > 1)
        } else {
            return false
        }
    }
}
