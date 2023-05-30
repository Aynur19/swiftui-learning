//
//  CollectionExt.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 30.05.2023.
//

extension Collection where Element: Identifiable {
    func index(matching element: Element) -> Self.Index? {
        firstIndex(where: { $0.id == element.id })
    }
}
