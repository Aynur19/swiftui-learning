//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 09.04.2023.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(game: game)
        }
    }
}
