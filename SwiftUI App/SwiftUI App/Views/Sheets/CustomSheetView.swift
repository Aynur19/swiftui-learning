//
//  CustomSheetView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct CustomSheetView: View {
    @State private var showingDetail = false
        
    var sheetViewType: Any
    var title: String
    
    init(sheetViewType: Any, title: String) {
        self.sheetViewType = sheetViewType
        self.title = title
    }
    
    var body: some View {
        NavigationView {
            Button(action: {
                    self.showingDetail.toggle()
            }) {
                Text("\(self.title)")
            }.sheet(isPresented: $showingDetail) {
                self.buildView()
            }
            
            .navigationTitle("Custom Sheet Parent View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func buildView() -> AnyView {
        switch self.sheetViewType {
        case is DetailView.Type: return AnyView(DetailView())
        case is UserDefaultsView.Type: return AnyView(UserDefaultsView())
            
        default: return AnyView(EmptyView())
        }
    }
}

struct CustomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSheetView(sheetViewType: DetailView.self,
                        title: "Detail Sheet View")
    }
}
