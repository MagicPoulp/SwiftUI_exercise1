//
//  Tutor.swift
//  Tutors
//
//  Created by Sai Kambampati on 6/5/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct Tutor: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var headline: String
    var bio: String
}

#if DEBUG
let testData = [
    Tutor(imageName: "alvan-nee-T-0EW-SEbsE-unsplash1", name: "Sai Kambampati", headline: "Writer at AppCoda", bio: "Sai Kambampati is an app developer. He lives in Sacramento, CA and was awarded with Apple's WWDC 2017 Scholarship. Proficient in Swift and Python, it's his dream to develop an AI product."),
    Tutor(imageName: "alvan-nee-T-0EW-SEbsE-unsplash2", name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS prgramming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger."),
    Tutor(imageName: "fatty-corgi-wHgkrmuMFOY-unsplash", name: "Gabriel Theodoropoulos", headline: "Advanced Software Developer", bio: "Gabriel has been a software developer for about two decades. He has long experience in developing software solutions for various platforms in many programming languages."),
    Tutor(imageName: "manpreet-singh-cZeJxXY49Bw-unsplash", name: "Andrew Jaffee", headline: "Author and Software Developer", bio: "Avid and well-published author and software developer now specializing in iOS mobile app development in Obj-C and Swift. Andrew has published several apps in the Apple App Store and 30 years of experience."),
    Tutor(imageName: "chris-arthur-collins-qGkVJ7Tx36s-unsplash", name: "Athena Lam", headline: "Content marketing professional", bio: "Athena is a co-founder of Business 3.0, a publication dedicated to sharing founders journeys in product and business development in East Asia. Social justice advocate."),
    Tutor(imageName: "ryan-walton-AbNO2iejoXA-unsplash", name: "Alfian Losari", headline: "Lifelong Learner", bio: "Mobile, Web, a bit of backend Software Developer and LifeLong Learner. Current building super app."),
    Tutor(imageName: "cody-board-tnNVJd_nrw8-unsplash", name: "Lawrence Tan", headline: "Passionate iOS Developer", bio: "Lawrence is a passionate iOS Developer with over 3 years of commercial experience and had worked with clirents from US, Europe, and Asia. He's a tech addict and Swift enthusiast."),
    Tutor(imageName: "victor-grabarczyk-N04FIfHhv_k-unsplash", name: "Kelvin Tan", headline: "Self-taught iOS Mobile Developer", bio: "Kelvin is a self taught iOS Mobile Developer who is currently active writing tutorials on his site. He is from Malaysia and speaks about 4 different languages."),
    Tutor(imageName: "cristina-anne-costello-TeJE3i-AWFA-unsplash", name: "Kelvin Tan", headline: "Self-taught iOS Mobile Developer", bio: "Kelvin is a self taught iOS Mobile Developer who is currently active writing tutorials on his site. He is from Malaysia and speaks about 4 different languages."),
]
#endif
