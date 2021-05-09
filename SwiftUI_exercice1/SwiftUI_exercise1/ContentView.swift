//
//  ContentView.swift
//  Tutors
//
//  Created by Sai Kambampati on 6/5/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var tutors: [Tutor] = testData
    
    var body: some View {
        NavigationView {
            List(tutors) { tutor in
                TutorCell(tutor: tutor)
            }.navigationBarTitle(Text("Who is your favorite?"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}
#endif

struct TutorCell : View {
    let tutor: Tutor
    var body: some View {
        return NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
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
