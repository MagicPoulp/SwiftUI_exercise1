//
//  ContentView.swift
//  SwiftUI_exercise1
//
//  Created by Thierry Vilmart on 2021-05-08.
//

import SwiftUI

// table view blog
// https://www.appcoda.com/swiftui-first-look/
struct ContentView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                Text("Simon Ng")
                Text("Founder of AppCoda")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

