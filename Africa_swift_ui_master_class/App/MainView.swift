//
//  MainView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            Tab("Browse", systemImage: "square.grid.2x2"){
                ContentView()
            }.customizationID("africa.browse.tab")
            
            Tab("Watch", systemImage: "play.tv"){
                VideoListView()
            }.customizationID("africa.browse.video")
            
            Tab("Locations", systemImage: "map"){
                MapView()
            }
            .customizationID("africa.browse.location")
            
            Tab("Gallery", systemImage: "photo"){
                GalleryView()
            }
            .customizationID("africa.browse.gallery")
                
                
        }
    }
}

#Preview {
    MainView()
}
