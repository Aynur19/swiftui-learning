//
//  Cardify.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 24.04.2023.
//

import SwiftUI

struct Cardify: ViewModifier {
    private typealias CDS = CardDrawingConstants
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: CDS.cornerRadius)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: CDS.strokeWidth)
            } else {
                shape.fill()
            }
            content.opacity(isFaceUp ? 1 : 0)
        }
    }
    
    private struct CardDrawingConstants {
        static let cornerRadius: CGFloat = 10
        static let strokeWidth: CGFloat = 3
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        return modifier(Cardify(isFaceUp: isFaceUp))
    }
}
