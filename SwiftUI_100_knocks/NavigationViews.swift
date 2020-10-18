//
//  NavigationViews.swift
//  SwiftUI_100_knocks
//
//  Created by r-kojima on 2020/10/17.
//

import SwiftUI

struct HideNavigationView: View {
    var body: some View {
        NavigationView {
            HStack {
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ListAndNavigationView: View {
    var fruits = ["Apple", "Banana", "Orange", "Grape", "Cherry", "Peach"]
    var body: some View {
        NavigationView {
            List (0..<fruits.count) { index in
                NavigationLink(destination: Text(fruits[index])) {
                    Text(fruits[index])
                }
            }
        }
    }
}

struct NavigationViews_Previews: PreviewProvider {
    static var previews: some View {
        HideNavigationView()
        ListAndNavigationView()
    }
}
