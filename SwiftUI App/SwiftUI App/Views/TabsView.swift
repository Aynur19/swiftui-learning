//
//  TabsView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct TabsView: View {
    let views: [(AnyView, String)] = [
        (AnyView(NavigationLinksView()), "Navigation Links"),
        (AnyView(AppsView()), "Apps")
    ]
    
    var body: some View {
        TabView {
            ForEach(0..<self.views.count, id: \.self) { i in
                let (view, title) = self.views[i]
                view.tabItem {
                    Text("\(title)")
                }
            }
            
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
