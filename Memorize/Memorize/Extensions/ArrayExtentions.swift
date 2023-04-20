//
//  ArrayExtensions.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 20.04.2023.
//

import Foundation

extension Array {
    var onlyItem: Element? { self.count == 1 ? self.first : nil }
}
