//
//  UserDefaultsView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct UserDefaultsView: View {
    @Environment(\.presentationMode) var userDefaultsPresentationMode
    
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Taps")
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Back") {
                    self.userDefaultsPresentationMode.wrappedValue.dismiss()
                }
                
                Spacer()
                
                Button("Tap count: \(tapCount)") {
                    self.tapCount += 1
                    UserDefaults.standard.set(self.tapCount, forKey: "Taps")
                }
                
                Spacer()
            }
            
            .navigationTitle("User Defaults Sheet View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct UserDefaultsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsView()
    }
}
