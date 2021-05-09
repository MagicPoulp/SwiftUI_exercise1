//
//  TutorDetail.swift
//  Tutors
//
//  Created by Sai Kambampati on 6/5/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct DogDetail : View {
    var imageName: String
    var name: String
    var headline: String
    var bio: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable(resizingMode: .stretch)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color(themeActionColor), lineWidth: 4)
                )
                .shadow(radius: 10)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            Divider()
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
            }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

#if DEBUG
struct DogDetail_Previews : PreviewProvider {
    static var previews: some View {
        DogDetail(imageName: "alvan-nee-T-0EW-SEbsE-unsplash1", name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS prgramming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.")
    }
}
#endif
