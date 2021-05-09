//
//  ContentView.swift
//  Tutors
//
//  Created by Sai Kambampati on 6/5/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var dogs: [Dog] = testData
    
    var body: some View {
        NavigationView {
            List(dogs) { tutor in
                DogCell(tutor: tutor)
            }.navigationBarTitle(Text("Who is your favorite?"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(dogs: testData)
    }
}
#endif

struct DogCell : View {
    let tutor: Dog
    var body: some View {
        return NavigationLink(destination: DogDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
            Image(tutor.imageName)
                .resizable(resizingMode: .stretch)
                .frame(width: 80.0, height: 80.0)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}
