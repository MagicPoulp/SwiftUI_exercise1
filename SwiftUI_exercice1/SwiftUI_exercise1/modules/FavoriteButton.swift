//
//  FavoriteButton.swift
//  SwiftUI_exercise1
//
//  Created by Thierry Vilmart on 2021-05-09.
//

import SwiftUI


struct FavoriteButton : View {
    var favorite = false
    
    var body: some View {
        favoriteButtonInternal(favorite: favorite)
        .resizable(resizingMode: .stretch)
        .frame(width: 30.0, height: 30.0)
    }
}

// https://stackoverflow.com/questions/56517610/conditionally-use-view-in-swiftui
func favoriteButtonInternal(favorite: Bool) -> Image {
    if favorite {
        return Image("6707380_star_yellow")
    }
    return Image("6707380_star")
}

#if DEBUG
/*
struct DogDetail_Previews : PreviewProvider {
    static var previews: some View {
        DogDetail(imageName: "alvan-nee-T-0EW-SEbsE-unsplash1", name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS prgramming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.")
    }
}*/
#endif
