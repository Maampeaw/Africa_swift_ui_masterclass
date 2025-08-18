//
//  InsetMapView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay({
                NavigationLink(destination: MapView()) {
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                    .background(Color.black.opacity(0.4))
                    .cornerRadius(8)
                }
            }().padding(12), alignment: .topTrailing)
            .frame(height: 256)
            .cornerRadius(12)
        
    }
}

#Preview {
    InsetMapView()
}
