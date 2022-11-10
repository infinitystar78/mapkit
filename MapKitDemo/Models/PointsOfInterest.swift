//
//  PointsOfInterest.swift
//  MapKitDemo
//
//  Created by M W on 10/11/2022.
//

import Foundation
import MapKit

struct PointOfInterest: Identifiable {
       let id = UUID()
       let name: String
       let latitude: Double
       let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
    }
    
}

