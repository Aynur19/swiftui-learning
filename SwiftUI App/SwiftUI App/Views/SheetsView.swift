//
//  SheetsView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 14.03.2023.
//

import SwiftUI

struct SheetsView: View {
    let sheets = [
        Example(title: "Detail Sheet View", viewType: DetailSheetView.self)
    ]
    var body: some View {
        ExamplesView(title: "Sheets Views",
                     sectionHeader: "Examples",
                     examples: self.sheets)
    }
}

struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsView()
    }
}
