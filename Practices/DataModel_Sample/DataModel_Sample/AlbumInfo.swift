//
//  AlbumInfo.swift
//  DataModel_Sample
//
//  Created by 최용석 on 2018. 2. 26..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

struct AlbumInfo {
    var title: String
    var singerName: String
    var genre: String
    
    init?(dic: Dictionary<String, String>) {
        guard let albumTitle = dic["albumTitle"], let artist = dic["artist"], let genre = dic["genre"] else { return nil }
        
        self.title = albumTitle
        self.singerName = artist
        self.genre = genre
    }
}
