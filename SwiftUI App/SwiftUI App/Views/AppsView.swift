//
//  AppsView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 13.03.2023.
//

import SwiftUI

struct AppsView: View {
    let apps = [
        Example(title: "Tip Calculator", viewType: TipCalculatorView.self),
        Example(title: "Country Flags", viewType: CountryFlagsView.self)
    ]
    
    var body: some View {
        ExamplesView(title: "Apps",
                     sectionHeader: "Examples",
                     examples: self.apps)
    }
}

struct AppsView_Previews: PreviewProvider {
    static var previews: some View {
        AppsView()
    }
}
