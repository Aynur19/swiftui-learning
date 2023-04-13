//
//  ContentView.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 09.04.2023.
//

import SwiftUI

struct ContentView: View {
    private var icons = ["🚐", "🚗", "🏎", "🚒", "🛵", "🚕", "🚎", "🚛", "🚑", "🚌", "🚚", "🚙", "🏍", "🚓", "🛻", "🛺", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K"]
    @State private var count = 25
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem(), GridItem()]) {
                    ForEach(icons[0..<count], id: \.self) { icon in
                        CardView(isFaceUp: true, content: icon)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding()
        .foregroundColor(.green)
    }
    
    private var remove: some View {
        Button {
            if count > 4 {
                count -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    private var add: some View {
        Button {
            if count < icons.count {
                count += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
