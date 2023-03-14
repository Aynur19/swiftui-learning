//
//  ActionSheetView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 11.03.2023.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                self.showingSheet = true
            }) {
                Text("Show Action Sheet")
            }.actionSheet(isPresented: $showingSheet) {
                ActionSheet(title: Text("What do you want to do?"),
                            message: Text("There is only one choise..."),
                            buttons: [
                                .default(Text("Dismiss Action Sheet")),
                                .cancel(),
                                .destructive(Text("Delete"))])
            }
            
            .navigationTitle("Action Sheet View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
