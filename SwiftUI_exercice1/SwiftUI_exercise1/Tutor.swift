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
    Tutor(imageName: "alvan-nee-T-0EW-SEbsE-unsplash1", name: "Einstein", headline: "Blind assistant", bio: "Einstein helps blind people to find their way."),
    Tutor(imageName: "alvan-nee-T-0EW-SEbsE-unsplash2", name: "Simon", headline: "Body guard", bio: "Simon can protect old people as a guard."),
    Tutor(imageName: "fatty-corgi-wHgkrmuMFOY-unsplash", name: "Nora", headline: "Gardener", bio: "Nora can plant seeds and water flowers."),
    Tutor(imageName: "manpreet-singh-cZeJxXY49Bw-unsplash", name: "Leo", headline: "Runner", bio: "Leo can run faster than most dogs. Good for messaging."),
    Tutor(imageName: "chris-arthur-collins-qGkVJ7Tx36s-unsplash", name: "Athena", headline: "Covid-19 detector", bio: "Athena and her nos can detect drugs and Covid-19."),
    Tutor(imageName: "ryan-walton-AbNO2iejoXA-unsplash", name: "Alfi", headline: "Cirkus dog", bio: "Alfi can do many tricks at the cirkus."),
    Tutor(imageName: "cody-board-tnNVJd_nrw8-unsplash", name: "Simba", headline: "Entertainer", bio: "Simba is friendly with everyone and can calm down a crowd."),
    Tutor(imageName: "victor-grabarczyk-N04FIfHhv_k-unsplash", name: "Zizou", headline: "Footballer", bio: "Zizou is strong with the ball."),
    Tutor(imageName: "cristina-anne-costello-TeJE3i-AWFA-unsplash", name: "Keops", headline: "Archeolog", bio: "Keops can spell things far away."),
]
#endif
