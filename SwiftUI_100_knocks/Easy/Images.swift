//
//  Images.swift
//  SwiftUI_100_knocks
//
//  Created by r-kojima on 2020/10/17.
//

import SwiftUI

struct FilledImage: View {
    var body: some View {
        Image("panda")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 200)
            .background(Color.red)
    }
}

struct ClipedImage: View {
    var body: some View {
        Image("panda")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 200)
            .clipped()
    }
}

struct CircledImage: View {
    var body: some View {
        Image("panda")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 2))
    }
}


struct Images: View {
    var body: some View {
        HStack {
            Image("panda")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("panda")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("panda")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("panda")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("panda")
                .resizable()
                .frame(width: 42, height: 42)
        }
        .padding()
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        FilledImage()
        ClipedImage()
        CircledImage()
        Images()
    }
}
