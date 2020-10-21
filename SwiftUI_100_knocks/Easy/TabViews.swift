//
//  TabViews.swift
//  SwiftUI_100_knocks
//
//  Created by r-kojima on 2020/10/18.
//

import SwiftUI

struct MyTabItem: View {
    var systemName = ""
    var text = ""
    var body: some View {
        VStack {
            Image(systemName: systemName)
            Text(text)
        }
    }
}

struct TabViewSample: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("The First Tab")
                .tabItem {
                    MyTabItem(systemName: "1.square", text: "First")
                }.tag(1)
            
            Text("Another Tab")
                .tabItem {
                    MyTabItem(systemName: "2.square", text: "Second")
                }.tag(2)
         
            Text("The Last Tab")
                .tabItem {
                    MyTabItem(systemName: "3.square", text: "Third")
                }
                .tag(3)
        }
    }
}

struct TabViewAnswer: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSample()
        TabViewAnswer()
    }
}
