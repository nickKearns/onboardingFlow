//
//  CircleImage.swift
//  SwiftUITutorial
//
//  Created by Nicholas Kearns on 2/27/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("brooks")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4)
                .shadow(radius: 10)
        )
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
