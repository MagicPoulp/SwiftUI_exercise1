//
//  ContentView.swift
//  Dogs
//
//  Created by Sai Kambampati on 6/5/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI
import RxSwift

struct BlocData {
    var numFavorites = BehaviorSubject<Int>(value: 0)
}

struct ContentView : View {
        
    let navBarColor: UIColor = themeActionColor
    var dogs: [Dog] = []
    let blocData = BlocData()
    @State var numFavorites: Int = 0
    let disposeBag = DisposeBag()

    init(dogs: [Dog]?) {
        if dogs != nil {
            self.dogs = dogs!
        }

        //https://stackoverflow.com/questions/56505528/swiftui-update-navigation-bar-title-color

        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: navBarColor]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: navBarColor]
        
        blocData.numFavorites.subscribe({
            event in
                switch event {
                case .next(let data):
                    numFavorites = data
                case .error(_): break
                       // an error occurred
                case .completed: break
                       // the observable has finished sending events.
               }
        }).disposed(by: disposeBag)
    }
    
    var body: some View {
        NavigationView {
            List(dogs) { dog in
                DogCell(dog: dog)
            }.navigationBarTitle(
                Text("Which are your favorites?"), displayMode: .inline)
            .navigationBarItems(
                trailing:
                    HStack() {
                        Text("numFavorites")
                        Image(yellowStarIcon)
                            .resizable(resizingMode: .stretch)
                            .frame(width: 30.0, height: 30.0)
                        }
                    )

        }.accentColor(Color(navBarColor))
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
    let dog: Dog
    var body: some View {
        return NavigationLink(destination: DogDetail(imageName: dog.imageName, name: dog.name, headline: dog.headline, bio: dog.bio)) {
            HStack() {
                Image(dog.imageName)
                    .resizable(resizingMode: .stretch)
                    .frame(width: 80.0, height: 80.0)
                    .cornerRadius(40)
                VStack(alignment: .leading) {
                    Text(dog.name)
                    Text(dog.headline)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer() // to locate at opposite ends
                FavoriteButton()
                    .padding()
            }
        }
    }
}
