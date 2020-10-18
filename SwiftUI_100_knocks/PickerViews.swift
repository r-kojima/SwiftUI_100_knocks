//
//  PickerViews.swift
//  SwiftUI_100_knocks
//
//  Created by 小嶌諒 on 2020/10/18.
//

import SwiftUI

struct PickerSample: View {
    var pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
    var body: some View {
        HStack {
            Text("Pokemon")
            Picker(selection: .constant(1), label: Text("Pokemon"), content: {
                Text("Snorlax").tag(1)
                Text("Pikachu").tag(2)
                Text("Slowpoke").tag(3)
                Text("Meowth").tag(4)
            })
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

struct PickerAnswer: View {
    var pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
    @State private var selectedPokemon = 0
    
    var body: some View {
        Picker("Pokemon", selection: $selectedPokemon) {
            ForEach(0..<pokemons.count) {
                Text(self.pokemons[$0])
            }
        }.pickerStyle(WheelPickerStyle())
        .onReceive([self.selectedPokemon].publisher.first(), perform: { value in
            print("selectedPokemon: \(value)")
            print(self.pokemons[value])
        })
    }
}


struct PickerViews_Previews: PreviewProvider {
    static var previews: some View {
        PickerSample()
            .previewDevice(PreviewDevice(rawValue: "iPhone X"))
        PickerAnswer()
            .previewDevice(PreviewDevice(rawValue: "iPhone X"))
    }
}
