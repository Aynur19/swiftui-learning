//
//  ContentView.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 09.04.2023.
//

import SwiftUI

struct ContentView: View {
    var game: EmojiMemoryGame
    var body: some View {
        MemorizeView(game: game)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        
        ContentView(game: game)
            .preferredColorScheme(.dark)
    }
}
