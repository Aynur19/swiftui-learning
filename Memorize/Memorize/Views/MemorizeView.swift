//
//  MemorizeView.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 16.04.2023.
//

import SwiftUI

struct MemorizeView: View {
    @ObservedObject var game: EmojiMemoryGame
    
    var body: some View {
        NavigationView {
            AspectVGrid(items: game.cards, aspectRatio: 2/3) { card in
                CardView(card)
                    .padding(4)
                    .onTapGesture {
                        game.choose(card)
                    }
            }
            .foregroundColor(.red)
            .padding(.horizontal)
            .navigationTitle("Memorize")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct MemorizeView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        MemorizeView(game: game)
    }
}
