//
//  ExamplesView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 13.03.2023.
//

import SwiftUI

class Example : Identifiable {
    var id: UUID
    var title: String
    var destinationViewType: Any
    
    init(title: String = "Title", viewType destinationViewType: Any) {
        self.id = UUID()
        self.title = title
        self.destinationViewType = destinationViewType
    }
    
    func buildView() -> AnyView {
        switch self.destinationViewType {
        case is CustomModifiersView.Type: return AnyView(CustomModifiersView())
        case is ObservableObjectView.Type: return AnyView(ObservableObjectView())
        case is AlertsView.Type: return AnyView(AlertsView())
        case is AlertWithActionView.Type: return AnyView(AlertWithActionView())
        case is ActionSheetView.Type: return AnyView(ActionSheetView())
            
        case is TipCalculatorView.Type: return AnyView(TipCalculatorView())
        case is CountryFlagsView.Type: return AnyView(CountryFlagsView())
            
        case is DetailSheetView.Type: return AnyView(DetailSheetView())
            
        default: return AnyView(EmptyView())
        }
    }
}

struct ExamplesView: View {
    
    var title: String
    var sectionHeader: String
    var examples: [Example]
    
    init(title: String = "Navigation Title",
         sectionHeader: String = "Header",
         examples: [Example] = []) {
        self.title = title
        self.sectionHeader = sectionHeader
        self.examples = examples
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text(self.sectionHeader)) {
                    List {
                        ForEach(0..<self.examples.count, id: \.self) { i in
                            let example = self.examples[i]
                            let newView = example.buildView()
                            
                            NavigationLink(destination: newView) {
                                Text("\(i + 1). \(example.title)")
                            }
                        }
                    }
                }
                
                .navigationTitle(self.title)
                
            }
        }
    }
}


struct ExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        ExamplesView()
    }
}
