//
//  SheetsView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct SheetsView: View {
    let sheets: [(Any, String)] = [
        (DetailView.self, "Detail Sheet View"),
        (UserDefaultsView.self, "User Defaults Sheet View")
    ]
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Examples")) {
                    List {
                        ForEach(0..<self.sheets.count, id: \.self) { i in
                            let (viewType, title) = self.sheets[i]
                            
                            NavigationLink(destination: CustomSheetView(sheetViewType: viewType, title: title)) {
                                Text("\(i + 1). \(title)")
                            }
                        }
                    }
                }
                
                .navigationTitle("Sheet Views")
                
            }
        }
    }
}

struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsView()
    }
}
