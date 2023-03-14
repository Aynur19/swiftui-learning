//
//  CountryFlagsView.swift
//  SwiftUI App
//
//  Created by Aynur Nasybullin on 11.03.2023.
//

import SwiftUI

struct CountryFlagsView: View {
    
    @State private var countries = ["UK", "USA", "Russia", "Bangladesh", "Germany", "Greece", "Sweden", "Canada", "Brazil"].shuffled()
    @State private var correctAnswer = Int.random(in: 0..<3)
    @State private var score = 0
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.orange, .white]),
                               startPoint: .top,
                               endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 25) {
                    VStack {
                        Text("Выберите флаг:")
                            .foregroundColor(.black)
                            .font(.headline)
                        
                        Text(countries[correctAnswer])
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .fontWeight(.black)
                    }
                    
                    ForEach(0..<3) { number in
                        Button(action: {
                            self.flagTapped(number)
                            self.showingScore = true
                        }) {
                            Image(self.countries[number])
                                .renderingMode(.original)
                                .frame(width: 250, height: 125)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 2))
                                .shadow(color: .black, radius: 5)
                        }
                    }
                    
                    Text("Общий счет: \(score)")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }.alert(isPresented: $showingScore) {
                Alert(title: Text(scoreTitle),
                      message: Text("Общий счет: \(score)"),
                      dismissButton: .default(Text("Продолжить")) {
                    self.ascQuestion()
                })
            }
            
            .navigationTitle("Country Flags App")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func ascQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            score += 1
            scoreTitle = "Правильный ответ!"
        } else {
            score -= 1
            scoreTitle = "Неправильно! это флаг \(countries[number])"
        }
    }
}

struct CountryFlagsView_Previews: PreviewProvider {
    static var previews: some View {
        CountryFlagsView()
    }
}
