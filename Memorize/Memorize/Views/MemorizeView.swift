//
//  MemorizeView.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 16.04.2023.
//

import SwiftUI

struct MemorizeView: View {
    @ObservedObject var game: EmojiMemoryGame
    @Namespace private var dealingNamespace
    
    private typealias Consts = CardConstants
    
    var body: some View {
        VStack {
            gameBody
            deckBody
            shuffleBtn
        }
        .padding()
    }
    
    var gameBody: some View {
        AspectVGrid(items: game.cards, aspectRatio: Consts.aspectRatio) { card in
            cardView(for: card)
        }
        .foregroundColor(.red)
    }
    
    var deckBody: some View {
        ZStack {
            ForEach(game.cards.filter(isUndealt)) { card in
                CardView(card)
                    .matchedGeometryEffect(id: card.id, in: dealingNamespace)
                    .transition(AnyTransition.asymmetric(insertion: .opacity, removal: .identity))
            }
        }
        .frame(width: CardConstants.undealtWidth, height: Consts.undealtHeight)
        .foregroundColor(.red)
        .onTapGesture {
            // "deal" cards
            for card in game.cards {
                withAnimation(dealAnimation(for: card)) {
                    deal(card)
                }
            }
        }
    }
    
    var shuffleBtn: some View {
        Button("Shuffle") {
            withAnimation(.easeInOut(duration: Consts.shuffleDuration)) {
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
    
    private func dealAnimation(for card: EmojiMemoryGame.Card) -> Animation {
        var delay = 0.0
        if let index = game.cards.firstIndex(where: { $0.id == card.id }) {
            delay = Double(index) * (Consts.totalDistributionDuration / Double(game.cards.count))
        }
        
        return Animation
            .easeInOut(duration: Consts.distributionDuration)
            .delay(delay)
    }
    
    @ViewBuilder
    private func cardView(for card: EmojiMemoryGame.Card) -> some View {
        if isUndealt(card) || card.isMatched && !card.isFaceUp {
            Rectangle().opacity(Consts.undealtOpacity)
        } else {
            CardView(card)
                .matchedGeometryEffect(id: card.id, in: dealingNamespace)
                .padding(Consts.cardViewPadding)
                .transition(AnyTransition.asymmetric(insertion: .identity, removal: .opacity))
                .onTapGesture {
                    withAnimation(.easeInOut(duration: Consts.undealtDuration)) {
                        game.choose(card)
                    }
                }
        }
    }
    
    private struct CardConstants {
        static let aspectRatio: CGFloat = 2/3
        static let undealtHeight: CGFloat = 90
        static let undealtWidth = undealtHeight * aspectRatio
        static let undealtOpacity = 0.0
        static let cardViewPadding: CGFloat = 4
        static let undealtDuration = 1.0
        static let distributionDuration = 1.0
        static let shuffleDuration = 1.0
        static let totalDistributionDuration = 5.0
    }
}

struct MemorizeView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        game.choose(game.cards.first!)
        
        return MemorizeView(game: game)
    }
}
