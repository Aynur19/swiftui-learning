//
//  DetailView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Back") {
                    self.presentationMode.wrappedValue.dismiss()
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

struct DetailSheetView: View {
    @State private var showingDetail = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                    self.showingDetail.toggle()
            }) {
                Text("Show detail")
            }.sheet(isPresented: $showingDetail) {
                DetailView()
            }
            
            .navigationTitle("Detail Sheet Parent View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSheetView()
    }
}
