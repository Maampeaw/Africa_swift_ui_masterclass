//
//  AnimalVideoListTile.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 18/08/2025.
//

import SwiftUI

struct AnimalVideoListTile: View {
    let video: Video
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image(video.videoCoverName)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .overlay {
                    Image(systemName: "play.circle")
                        .foregroundColor(.white)
                }
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading,spacing: 15){
                    Text(video.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.accent)
                Text(video.headline)
                    
                    
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let video = Video.videoList().first!
    AnimalVideoListTile(video: video)
}
