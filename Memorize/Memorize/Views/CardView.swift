//
//  CardView.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 10.04.2023.
//

import SwiftUI

struct CardView: View {
    private typealias CDS = CardDrawingConstants
    private let card: EmojiMemoryGame.Card
    
    init(_ card: EmojiMemoryGame.Card) {
        self.card = card
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Text(card.content)
                    .rotationEffect(Angle(degrees: card.isMatched ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false), value: card.isMatched)
                    .font(Font.system(size: CDS.fontSize))
                    .scaleEffect(fontScale(thatFits: geometry.size))
                Pie(startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 115-90), clockwise: false)
                    .padding(CDS.piePadding)
                    .opacity(CDS.pieOpacity)
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    private func fontScale(thatFits size: CGSize) -> CGFloat {
        min(size.width, size.height) / (CDS.fontSize / CDS.fontScale)
    }
    
    private struct CardDrawingConstants {
        static let fontScale: CGFloat = 0.72
        static let fontSize: CGFloat = 32
        static let mathedCardOpacity: Double = 0
        static let piePadding: CGFloat = 8
        static let pieOpacity: Double = 0.5
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = EmojiMemoryGame.Card(content: "A", isFaceUp: true)
        CardView(card)
    }
}
