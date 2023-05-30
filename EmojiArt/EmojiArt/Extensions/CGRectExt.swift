//
//  CGRectExt.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 30.05.2023.
//

import SwiftUI


extension CGRect {
    var center: CGPoint {
        CGPoint(x: midX, y: midY)
    }
}
