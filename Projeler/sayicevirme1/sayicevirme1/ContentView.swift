//
//  ContentView.swift
//  sayicevirme1
//
//  Created by Talha Coşkun on 2.11.2023.
//

import SwiftUI


struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var isReversed = false

    var body: some View {
        VStack {
            Text(isReversed ? "Düz Sıra" : "Ters Sıra")
                .font(.headline)

            Text(numbers.map { String($0) }.joined(separator: " "))
                .font(.largeTitle)

            HStack {
                Button(action: generateRandomNumbers) {
                    Text("Yenile")
                }
                Button(action: sortNumbers) {
                    Text("Sırala")
                }
                Button(action: toggleOrder) {
                    Text(isReversed ? "Ters Sıra" : "Düz Sıra")
                }
            }
        }
        .onAppear(perform: generateRandomNumbers)
    }

    func generateRandomNumbers() {
        numbers = (1...10).map { _ in Int.random(in: 1...100) }
    }

    func sortNumbers() {
        if isReversed {
            numbers.sort()
        } else {
            numbers.sort(by: >)
        }
    }

    func toggleOrder() {
        isReversed.toggle()
    }
}
