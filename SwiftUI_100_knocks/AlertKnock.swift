//
//  AlertKnock.swift
//  SwiftUI_100_knocks
//
//  Created by 小嶌諒 on 2020/10/21.
//

import SwiftUI

struct AlertKnock: View {
    @State private var isShowSheet = false
    var body: some View {
        Button(action: {
            isShowSheet = true
        }) {
            Text("Push Me!")
        }
        .alert(isPresented: $isShowSheet, content: {
            Alert(title: Text("タイトル"),
                  message: Text("メッセージ"),
                  primaryButton:
                    .default(Text("ボタンその１"),
                     action: { isShowSheet = false }),
                  secondaryButton:
                    .destructive(Text("ボタンその２"),
                     action: { isShowSheet = false })
            )
        })
    }
}

struct AlertKnock_Previews: PreviewProvider {
    static var previews: some View {
        AlertKnock()
    }
}
