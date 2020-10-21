//
//  ButtonKnock.swift
//  SwiftUI_100_knocks
//
//  Created by r-kojima on 2020/10/18.
//

import SwiftUI

struct ButtonKnock: View {
    var texts = ["Forever", "Snorlax"]
    @State private var state = 0
    var body: some View {
        VStack {
            Text(texts[state % texts.count])
            Button(action: {
                state += 1
            }) {
                Text("Touch Me!!")
            }
        }
    }
}

struct OriginalButton: View {
    var texts = ["Forever", "Snorlax"]
    @State private var state = 0
    var body: some View {
        VStack {
            Text(texts[state % texts.count])
            Button(action: {
                state += 1
            }) {
                HStack {
                    Image("panda")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fill)
                    Text("Tap Me!!")
                        .foregroundColor(.black)
                }
                .frame(width: 150, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
                .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct OriginalButtonAnswer: View {
    @State var text = "Snorlax"
    
    var body: some View {
        VStack {
            Text(text)
            Button(action: {
                self.text = "Forever"
            }) {
                HStack {
                    Image("panda")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    Text("Tap Me!!")
                }
                .padding()
                .border(Color.gray, width: 2)
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct ButtonKnock_Previews: PreviewProvider {
    static var previews: some View {
        ButtonKnock()
        OriginalButton()
        OriginalButtonAnswer()
    }
}
