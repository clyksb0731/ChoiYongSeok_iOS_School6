//
//  UserDataCenter.swift
//  Singleton_Sample
//
//  Created by 최용석 on 2018. 2. 26..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class UserDataCenter {
    
    static var main: UserDataCenter = UserDataCenter()
    
    var islogin: Bool?
    
    private var userList: [String] = []
    
    func login(userID: String, userPW: String) -> Bool {
        return true
    }
    
    private init() {
        
    }
}
