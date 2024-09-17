//
//  ContentView.swift
//  heceleme
//
//  Created by Talha Coşkun on 15.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var numberText: String = ""
    @State private var turkishText: String = ""
    
    var body: some View {
        VStack {
            TextField("Rakamları Girin", text: $numberText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Türkçe Okunuşu Bul") {
                turkishText = convertToTurkish(numberText)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)

            Text(turkishText)
                .padding()
        }
        .padding()
    }
    func convertToTurkish(_ numberText: String) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = Locale(identifier: "tr_TR")
        numberFormatter.numberStyle = .spellOut

        guard let number = Int(numberText) else {
            return "Geçersiz Sayı"
        }
        let nsNumber = NSNumber(value: number)
        return numberFormatter.string(from: nsNumber) ?? "Geçersiz Sayı"
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#Preview {
    ContentView()
}
