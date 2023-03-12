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

struct CustomModifiersView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(CustomTextModifier())
    }
}

struct CustomModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiersView()
    }
}
