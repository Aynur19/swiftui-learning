//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 16.05.2023.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
