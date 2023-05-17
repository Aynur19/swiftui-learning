//
//  Extensions.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 17.05.2023.
//

import SwiftUI


extension Collection where Element: Identifiable {
    func index(matching element: Element) -> Self.Index? {
        firstIndex(where: { $0.id == element.id })
    }
}
