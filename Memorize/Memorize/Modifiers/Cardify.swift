//
//  Cardify.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 24.04.2023.
//

import SwiftUI

struct Cardify: AnimatableModifier {
    private typealias CDS = CardDrawingConstants
    
    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0 : 180
    }
    
    var rotation: Double //in degree
    var animatableData: Double {
        get { rotation }
        set { rotation = newValue }
    }
    
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: CDS.cornerRadius)
            if rotation < 90 {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: CDS.strokeWidth)
            } else {
                shape.fill()
            }
            content.opacity(rotation < 90 ? 1 : 0)
        }
        .rotation3DEffect(Angle.degrees(rotation), axis: (0, 1, 0))
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
