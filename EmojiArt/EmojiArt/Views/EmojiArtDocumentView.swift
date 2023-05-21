//
//  EmojiArtDocumentView.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 16.05.2023.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    @ObservedObject var document: EmojiArtDocument
    
    let defaultFontSize: CGFloat = 40
    
    var body: some View {
        VStack(spacing: 0) {
            documentBody
            palette
        }
    }
    
    var documentBody: some View {
        Color.green
    }
    
    var palette: some View {
        ScrollingEmojisView(emojis: testEmojis)
            .font(.system(size: defaultFontSize))
    }
    
    let testEmojis =  "🙂😀😃😄😁😅😆🤣😂🙃😉😊😇😎🤓🧐🥳🥰😍🤩😘😗😚😙🥲😋😛😜🤪😝🤑🤗🤭🤫🤔😐🤐🤨😑😶😏😒🙄😬🤥😪😴😌😔🤤😷🤒🤕🤢🤮🤧🥵🥶🥴😵🤯😕😟🙁😮😯😲😳🥺😦😧😨😰😥😢😭😱😖😣😞😓😩😫🥱😤😡😠🤬😈👿💀💩🤡👹👺👻👽👾🤖"
}

struct ScrollingEmojisView: View {
    let emojis: String
    
    var body: some View{
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis.map({ String($0) }), id: \.self) { emoji in
                    Text(emoji)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let document = EmojiArtDocument()
        EmojiArtDocumentView(document: document)
    }
}
