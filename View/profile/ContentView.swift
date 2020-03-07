//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Nicholas Kearns on 2/27/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Brooks Koepka")
                    .font(.title)
                HStack {
                    Text("West Palm Beach")
                        .font(.subheadline)
                    Spacer()
                    Text("Florida")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
