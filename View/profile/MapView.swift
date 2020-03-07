//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Nicholas Kearns on 2/27/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
     func updateUIView(_ view: MKMapView, context: Context) {
           let coordinate = CLLocationCoordinate2D(
            latitude: 26.7153, longitude: -80.0534)
           let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
           let region = MKCoordinateRegion(center: coordinate, span: span)
           view.setRegion(region, animated: true)
       }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
