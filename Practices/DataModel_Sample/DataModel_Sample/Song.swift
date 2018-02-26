//
//  Song.swift
//  DataModel_Sample
//
//  Created by 최용석 on 2018. 2. 26..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

struct Song {
//    var songTitle: String = ""
//    var artist: String = ""
//    var writer: String = ""
//    var playTime: Int = 0
//    var playURL: String = ""
    
    var songTitle: String
    var trackNum: Int
    var artist: String
    var writer: String
    var playTime: Int
    var playURL: String
    
    init?(dic: Dictionary<String, Any>) {
        guard let songTitle = dic["songTitle"] as? String, let trackNum = dic["trackNum"] as? Int, let artist = dic["artist"] as? String, let writer = dic["writer"] as? String, let playTime = dic["playTime"] as? Int, let playURL = dic["playURL"] as? String else { return nil }
        
        self.songTitle = songTitle
        self.trackNum = trackNum
        self.artist = artist
        self.writer = writer
        self.playTime = playTime
        self.playURL = playURL
    }
}
