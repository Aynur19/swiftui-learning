//
//  CGSizeExt.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 30.05.2023.
//

import SwiftUI


extension CGSize {
    var center: CGPoint {
        CGPoint(x: width / 2, y: height / 2)
    }
    
    static func +(lhs: Self, rhs: Self) -> CGSize {
        CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    
    static func -(lhs: Self, rhs: Self) -> CGSize {
        CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    
    static func *(lhs: Self, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
    }
    
    static func /(lhs: Self, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
    }
}
