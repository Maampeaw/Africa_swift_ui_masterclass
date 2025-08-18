//
//  Video.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 18/08/2025.
//
import Foundation

struct Video: Decodable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var videoCoverName: String {
        return "video-\(id)"
    }
    
    static func videoList() -> [Video] {
        let videos: [Video]? = Bundle.main.decode( "videos.json")
        return videos ?? []
    }
}
