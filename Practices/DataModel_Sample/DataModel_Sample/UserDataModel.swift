//
//  UserDataModel.swift
//  DataModel_Sample
//
//  Created by 최용석 on 2018. 2. 26..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

enum Gender: Int {
    case Male = 0
    case Female = 1
}

struct UserDataModel {
    var userID: String
    var userPW: String
    var email: String
    var birthday: String?
    var gender: Gender?
    
    init?(dic: [String:Any]) {
        guard let id = dic["userID"] as? String, let pw = dic["userPW"] as? String, let email = dic["email"] as? String else { return nil }
        
        self.userID = id
        self.userPW = pw
        self.email = email
        
        self.birthday = dic["birthday"] as? String
        if let genderNum = dic["gender"] as? Int {
            // ***************************** // enum usage
            gender = Gender(rawValue: genderNum)
        }
        
    }
}
