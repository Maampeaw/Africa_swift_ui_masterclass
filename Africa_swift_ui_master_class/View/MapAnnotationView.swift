//
//  MapAnnotationView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 19/08/2025.
//

import SwiftUI

struct MapAnnotationView: View {
    var location: Location
    @State private var animation: Double = 0.0
    var body: some View {
        ZStack{
            Circle().fill(.accent)
                .frame(width: 54, height: 54)
            Circle().stroke(.accent, lineWidth: 2)
                .frame(width: 52, height: 52)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false )) {
                animation = 1
            }
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let location = Location.getLocations().first!
    MapAnnotationView(location: location)
}
