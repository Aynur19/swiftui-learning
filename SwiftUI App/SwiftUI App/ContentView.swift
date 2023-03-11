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
            TipCalculator().tabItem {
                Image(systemName: "1.circle").environment(\.symbolVariants, .none)
                Text("Tip Calculator")
            }
            
            TwoAlerts().tabItem {
                Image(systemName: "2.circle")
                Text("Two Alerts")
            }
        }
    }
}

struct TwoAlerts: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    var body: some View {
        HStack {
            Button("Show 1") {
                self.showingAlert1 = true
            }.alert(isPresented: $showingAlert1) {
                Alert(title: Text("One"), message: nil, dismissButton: .cancel())
            }
            
            Button("Show 2") {
                self.showingAlert2 = true
            }.alert(isPresented: $showingAlert2) {
                Alert(title: Text("Two"), message: nil, dismissButton: .cancel())
            }
        }
    }
}

struct TipCalculator: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 0
    
    let tipPercentages = [0, 5, 10, 15, 20]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", text: $checkAmount)
                Picker("Number of people", selection: $numberOfPeople) {
                    ForEach(2..<100) {
                        Text("\($0) people")
                    }
                }
            }
            Section(header: Text("Сколько чаевых вы хотите оставить?")) {
                Picker("Tip percentage", selection: $tipPercentage) {
                    ForEach(0..<tipPercentages.count) {
                        Text("\(self.tipPercentages[$0])%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section {
                Text("\(totalPerPerson, specifier: "%.3f")")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
