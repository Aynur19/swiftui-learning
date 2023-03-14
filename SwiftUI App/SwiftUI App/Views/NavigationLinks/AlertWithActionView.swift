//
//  AlertWithActionView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 11.03.2023.
//

import SwiftUI

struct AlertWithActionView: View {
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Show Alert")
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Are you sure you want to delete this?"),
                      message: Text("There is no way back"),
                      primaryButton: .destructive(Text("Delete")) {
                    print("Deleting...")
                }, secondaryButton: .cancel())
            }
            
            .navigationTitle("Alert With Action View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AlertWithActionView_Previews: PreviewProvider {
    static var previews: some View {
        AlertWithActionView()
    }
}
