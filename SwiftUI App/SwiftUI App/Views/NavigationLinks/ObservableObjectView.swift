//
//  ObservableObjectView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 13.03.2023.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "FirstName"
    @Published var lastName = "LastName"
}

struct ObservableObjectView: View {
    @ObservedObject var user = User()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("Hello \(user.firstName) \(user.lastName)!")
                
                TextField("First name", text: $user.firstName)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 12)
                
                TextField("Last name", text: $user.lastName)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 12)
            }
            
            .navigationTitle("Observable Object View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

struct ObservableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectView()
    }
}
