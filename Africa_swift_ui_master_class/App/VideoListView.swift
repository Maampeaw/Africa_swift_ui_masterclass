//
//  VideoListView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct VideoListView: View {
    let videoList = Video.videoList();
    var body: some View {
        NavigationView {
            List{
                ForEach(videoList) { video in
                    NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)) {
                        AnimalVideoListTile(video: video)
                    }
                }
            }
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "checkmark.rectangle")
                        .foregroundStyle(.accent)
                }
            }
        }
      
    }
}

#Preview {
    VideoListView()
}
