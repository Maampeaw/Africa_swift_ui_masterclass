//
//  Location.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 19/08/2025.
//

import Foundation
import MapKit

struct Location: Identifiable, Codable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    static func getLocations()-> [Location] {
        let locations: [Location]? = Bundle.main.decode("locations.json")
        return locations ?? []
    
    }
}
