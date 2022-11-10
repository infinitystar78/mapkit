//
//  ContentView.swift
//  MapKitDemo
//
//  Created by M W on 10/11/2022.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 40.83834587046632,
            longitude: 14.254053016537693),
        span: MKCoordinateSpan(
            latitudeDelta: 0.03,
            longitudeDelta: 0.03)
    )

    private let places = [
        PointOfInterest(name: "Galeria Umberto I", latitude: 40.83859036140747, longitude: 14.24945566830365),
        PointOfInterest(name: "Castel dell'Ovo", latitude: 40.828206, longitude: 14.247549),
        PointOfInterest(name: "Piazza Dante", latitude: 40.848891382971985, longitude: 14.250055428532933),
    ]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places) { place in
            MapAnnotation(coordinate: place.coordinate) {
                Image(systemName: "cart.badge.questionmark")
                    .font(.title)
                    .foregroundColor(.red)
            }
        }

        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
