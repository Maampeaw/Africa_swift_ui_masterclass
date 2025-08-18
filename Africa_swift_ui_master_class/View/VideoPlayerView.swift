//
//  VideoPlayerView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 18/08/2025.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected: String
    var videoTitle: String
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")){
            }.overlay(alignment: .topLeading) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
            }
        }
        .accentColor(.accent)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
