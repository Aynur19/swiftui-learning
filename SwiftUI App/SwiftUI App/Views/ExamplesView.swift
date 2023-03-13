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
}

struct ExamplesView: View {
    
    let examplesNL = [
        Example(title: "Custom Modifiers", viewType: CustomModifiersView.self),
        Example(title: "Observable Object", viewType: ObservableObjectView.self)
    ]
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Navigation Links")) {
                    List {
                        ForEach(0..<self.examplesNL.count, id: \.self) {
                            let example = self.examplesNL[$0]
                            let newView = self.buildView(viewType: example.destinationViewType)
                            
                            NavigationLink(destination: newView) {
                                Text("\(example.title)")
                            }
                        }
                    }.navigationBarTitle("SwiftUI Examples")
                }
            }
        }
    }
    
    func buildView(viewType: Any) -> AnyView {
        switch viewType.self {
            case is CustomModifiersView.Type: return AnyView(CustomModifiersView())
            case is ObservableObjectView.Type: return AnyView(ObservableObjectView())
            default: return AnyView(EmptyView())
        }
    }
}


struct ExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        ExamplesView()
    }
}
