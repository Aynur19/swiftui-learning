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
                    .font(font(in: geometry.size))
                Pie(startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 115-90), clockwise: false)
                    .padding(CDS.piePadding)
                    .opacity(CDS.pieOpacity)
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * CDS.geometryScale)
    }
    
    private struct CardDrawingConstants {
        static let geometryScale = 0.72
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
