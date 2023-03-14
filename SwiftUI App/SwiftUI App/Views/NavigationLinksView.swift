//
//  NavigationLinksView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct NavigationLinksView: View {
    let navigationLinks = [
        Example(title: "Alert", viewType: AlertsView.self),
        Example(title: "Alert With Action", viewType: AlertWithActionView().self),
        Example(title: "Action Sheet", viewType: ActionSheetView.self),
        Example(title: "Custom Modifiers", viewType: CustomModifiersView.self),
        Example(title: "Observable Object", viewType: ObservableObjectView.self)
    ]
    var body: some View {
        ExamplesView(title: "Navigation Link Views",
                     sectionHeader: "Examples",
                     examples: self.navigationLinks)
    }
}

struct NavigationLinksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinksView()
    }
}
