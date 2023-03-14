//
//  DetailView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var detailViewPresentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Back") {
                    self.detailViewPresentationMode.wrappedValue.dismiss()
                }
                
                Spacer()
                
                Text("Detail")
                
                Spacer()
            }
            
            .navigationTitle("Detail Sheet View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
