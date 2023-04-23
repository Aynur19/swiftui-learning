//
//  Pie.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 23.04.2023.
//

import SwiftUI

struct Pie: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise = true
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let startPoint = CGPoint(
            x: center.x + radius * CGFloat(cos(startAngle.radians)),
            y: center.y + radius * CGFloat(sin(startAngle.radians))
        )
        
        var piePath = Path()
        piePath.move(to: center)
        piePath.addLine(to: startPoint)
        piePath.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: !clockwise)
        piePath.addLine(to: center)
        
        return piePath
    }
    
    
}
