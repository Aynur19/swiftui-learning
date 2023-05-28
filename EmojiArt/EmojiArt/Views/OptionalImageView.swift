//
//  OptionalImageView.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 28.05.2023.
//

import SwiftUI

struct OptionalImageView: View {
    var uiImage: UIImage?
    var body: some View {
        if uiImage != nil {
            Image(uiImage: uiImage!)
        }
    }
}

struct OptionalView_Previews: PreviewProvider {
    static var previews: some View {
        OptionalImageView()
    }
}
