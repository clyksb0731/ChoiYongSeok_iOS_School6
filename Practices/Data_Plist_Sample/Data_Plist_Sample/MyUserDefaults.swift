//
//  MyUserDefaults.swift
//  Data_Plist_Sample
//
//  Created by 최용석 on 2018. 2. 27..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class MyUserDefaults {
    static var standard: MyUserDefaults = MyUserDefaults()
    
    func object(forKey defaultName: String) -> Any? {
        var tmpDic: Dictionary<String, Any?> = Dictionary<String, Any?>()
        
        return nil
    }
    
    func set(_ value: Any?, forKey defaultName: String) {
        
    }
    
    func removeObject(forKey defaultName: String) {
        
    }
    
}
