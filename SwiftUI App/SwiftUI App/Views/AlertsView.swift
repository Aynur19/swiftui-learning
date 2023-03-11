//
//  AlertsView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 11.03.2023.
//

import SwiftUI

struct AlertsView: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    var body: some View {
        HStack {
            Button("Show 1") {
                self.showingAlert1 = true
            }.alert(isPresented: $showingAlert1) {
                Alert(title: Text("One"), message: nil, dismissButton: .cancel())
            }
            
            Button("Show 2") {
                self.showingAlert2 = true
            }.alert(isPresented: $showingAlert2) {
                Alert(title: Text("Two"), message: nil, dismissButton: .cancel())
            }
        }
    }
}

struct AlertsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}
