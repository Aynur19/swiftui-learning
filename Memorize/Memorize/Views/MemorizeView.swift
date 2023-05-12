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
        VStack {
            gameBody
            deckBody
            shuffleBtn
        }
        .padding()
    }
    
    var gameBody: some View {
        AspectVGrid(items: game.cards, aspectRatio: 2/3) { card in
            cardView(for: card)
        }
        .onAppear {
            // "deal" cards
            withAnimation(.easeInOut(duration: 1)) {
                for card in game.cards {
                    deal(card)
                }
            }
        }
        .foregroundColor(.red)
    }
    
    var deckBody: some View {
        ZStack {
            ForEach(game.cards.filter(isUndealt)) { card in
                CardView(card)
                    .transition(AnyTransition.asymmetric(insertion: .opacity, removal: .scale))
            }
        }
        .frame(width: CardConstants.undealtWidth, height: CardConstants.undealtHeight)
        .foregroundColor(.red)
    }
    
    var shuffleBtn: some View {
        Button("Shuffle") {
            withAnimation(.easeInOut(duration: 1)) {
                game.shuffle()
            }
        }
    }
    
    @State private var dealt = Set<UUID>()
    
    private func deal(_ card: EmojiMemoryGame.Card) {
        dealt.insert(card.id)
    }
    
    private func isUndealt(_ card: EmojiMemoryGame.Card) -> Bool {
        return !dealt.contains(card.id)
    }
    
    @ViewBuilder
    private func cardView(for card: EmojiMemoryGame.Card) -> some View {
        if isUndealt(card) || card.isMatched && !card.isFaceUp {
            Rectangle().opacity(0)
        } else {
            CardView(card)
                .padding(4)
                .transition(AnyTransition.asymmetric(insertion: .scale, removal: .opacity))
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1)) {
                        game.choose(card)
                    }
                }
        }
    }
    
    private struct CardConstants {
        static let aspectRatio: CGFloat = 2/3
        static let undealtHeight: CGFloat = 90
        static let undealtWidth = undealtHeight * aspectRatio
    }
}

struct MemorizeView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        game.choose(game.cards.first!)
        
        return MemorizeView(game: game)
    }
}
