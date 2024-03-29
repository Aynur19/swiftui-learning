//
//  ScrollingEmojisView.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 30.05.2023.
//

import SwiftUI

struct ScrollingEmojisView: View {
    let emojis: String
    
    var body: some View{
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis.map({ String($0) }), id: \.self) { emoji in
                    Text(emoji)
                        .onDrag { NSItemProvider(object: emoji as NSString) }
                }
            }
        }
    }
}
