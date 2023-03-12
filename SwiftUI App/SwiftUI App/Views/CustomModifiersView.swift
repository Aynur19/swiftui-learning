//
//  CustomModifiersView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 12.03.2023.
//

import SwiftUI

struct CustomTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.black)
    }
}


extension View {
    func customText() -> some View {
        self.modifier(CustomTextModifier())
    }
}


struct CustomModifiersView: View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Hello, World!").modifier(CustomTextModifier())
            
            Text("Hello, Swift!").customText()
        }
    }
}

struct CustomModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiersView()
    }
}
