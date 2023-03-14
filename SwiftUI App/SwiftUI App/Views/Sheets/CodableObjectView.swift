//
//  CodableObjectView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct UserData: Codable {
    var firstName = "First Name"
    var lastName = "Last Name"
}

struct CodableObjectView: View {

    @Environment(\.presentationMode) var codableObjectPresentationMode
    @State private var userData = UserData()
    
    init() {
        self.userData = self.getData()
    }
    
    var body: some View {
//        self.userData = self.getData()
        
        NavigationView {
            VStack {
                Button("Back") {
                    self.codableObjectPresentationMode.wrappedValue.dismiss()
                }
                
                Spacer()
                
                VStack(spacing: 20) {
                    TextField("First Name", text: $userData.firstName)
                        .padding(.horizontal, 64)
                    TextField("Last Name", text: $userData.lastName)
                        .padding(.horizontal, 64)
                    
                    Button("Save") {
                        let encoder = JSONEncoder()
                        
                        if let data = try? encoder.encode(self.userData) {
                            UserDefaults.standard.set(data, forKey: "UserData")
                        }
                    }
                    
                    Text("Hello, \(userData.firstName) \(userData.lastName)!")
                }
                Spacer()
            }
            
            .navigationTitle("User Defaults Sheet View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func getData() -> UserData {
        let decoder = JSONDecoder()
        let data = UserDefaults.standard.data(forKey: "UserData")
        
        if let data = data {
            return try! decoder.decode(UserData.self, from: data)
        } else {
            return UserData()
        }
    }
}

struct CodableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        CodableObjectView()
    }
}
