//
//  Album.swift
//  DataModel_Sample
//
//  Created by 최용석 on 2018. 2. 26..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

struct Album {
    var albumInfo: AlbumInfo?
    var songList: Array<Song?> = Array<Song?>()
    
    init?(dic: Dictionary<String, Any>) {
        guard let albumInfoDic = dic["albumInfo"] as? Dictionary<String, String>, let songDic = dic["songList"] as? Array<Dictionary<String, Any>> else { return nil }
        
        albumInfo = AlbumInfo(dic: albumInfoDic)
        
        for songDic in songDic {            
            let song = Song(dic: songDic)
            songList.append(song)
        }
    }
}
