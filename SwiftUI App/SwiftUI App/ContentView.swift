//
//  ContentView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 09.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        TabView {
            TipCalculatorView().tabItem {
                Image(systemName: "1.circle").environment(\.symbolVariants, .none)
                Text("Tip Calculator")
            }
            
            AlertsView().tabItem {
                Image(systemName: "2.circle")
                Text("Two Alerts")
            }
            
            AlertWithActionView().tabItem {
                Image(systemName: "3.circle")
                Text("Alert With Action")
            }
            
            ActionSheetView().tabItem {
                Image(systemName: "4.circle")
                Text("Action Sheet")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
