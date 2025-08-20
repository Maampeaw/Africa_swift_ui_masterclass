//
//  MapView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations:[Location] = Location.getLocations();
    
    var body: some View {
        //MARK: MAP WITH ANNOTATIONS
        Map(coordinateRegion: $region, annotationItems: locations) { location in
//   Pin:         MapPin(coordinate: location.location, tint: .accent)
//   Marker:         MapMarker(coordinate: location.location, tint: .accent)
            MapAnnotation(coordinate: location.location) {
                MapAnnotationView(location: location)
            }
        }
        .overlay({
            HStack(alignment: .center, spacing: 12){
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 8){
                    HStack{
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                    
                    HStack{
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(Color.black.cornerRadius(8).opacity(0.6))
            .padding()
                
        }(), alignment: .top)
    }
}

#Preview {
    MapView()
}
