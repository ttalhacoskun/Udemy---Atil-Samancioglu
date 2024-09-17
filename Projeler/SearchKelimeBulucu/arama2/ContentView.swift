//
//  ContentView.swift
//  arama2
//
//  Created by Talha Coşkun on 6.11.2023.
//

import SwiftUI

struct ContentView: View {
    let kelimeListesi = ["elma", "armut", "çilek", "muz", "kiraz", "karpuz"]
    @State private var harfAranan = ""
    @State private var sonucMesaji = ""

    var body: some View {
        VStack {
            TextField("Aranan harfi girin", text: $harfAranan)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Ara") {
                aramaYap()
            }

            Text(sonucMesaji)
        }
    }

    func aramaYap() {
        let kelimeler = kelimeListesi.filter { kelime in
            let harfArananDusuk = harfAranan.lowercased()
            let kelimeDusuk = kelime.lowercased()
            return kelimeDusuk.contains(harfArananDusuk)
        }
        
        if kelimeler.isEmpty {
            sonucMesaji = "Girilen harfi içeren kelime bulunamadı."
        } else {
            sonucMesaji = "Girilen harfi içeren kelimeler: \(kelimeler.joined(separator: ", "))"
        }
    }
}

#Preview {
    ContentView()
}
