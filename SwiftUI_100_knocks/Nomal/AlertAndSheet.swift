//
//  AlertAndSheet.swift
//  SwiftUI_100_knocks
//
//  Created by 小嶌諒 on 2020/10/21.
//

import SwiftUI

struct AlertAndSheet: View {
    @State private var text = ""
    @State private var isShowSheet = false
    @State private var isShowAlert = false
    var body: some View {
        VStack {
            TextField("Input Number", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                if Double(text) != nil {
                    isShowSheet = true
                } else {
                    isShowAlert = true
                }
            }) {
                Text("Show Sheet")
            }
            .alert(isPresented: $isShowAlert, content: {
                Alert(title: Text("Error"), message: Text("Please Input Number"), dismissButton: .cancel(Text("Close")) { isShowAlert = false })
            })
            .sheet(isPresented: $isShowSheet, content: {
                ResultText(text: $text)
            })
        }
        .padding()
    }
}

struct ResultText: View {
    @Binding var text: String
    var body: some View {
        Text("\(text) can convert to Double")
    }
}

struct AlertAndSheet_Previews: PreviewProvider {
    static var previews: some View {
        AlertAndSheet()
    }
}
