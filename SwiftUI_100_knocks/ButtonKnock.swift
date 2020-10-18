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

struct ButtonKnock_Previews: PreviewProvider {
    static var previews: some View {
        ButtonKnock()
    }
}
