//
//  Models.swift
//  API_Sample
//
//  Created by 최용석 on 2018. 3. 27..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

struct User: Codable {
    let token: String
    let user: People
    
    enum CodingKeys: String, CodingKey {
        case token
        case user
    }
    
    struct People: Codable {
        var email: String
        var firstName: String
        var lastName: String
        var pk: Int
        var userName: String
        
        enum CodingKeys: String, CodingKey {
            case email
            case firstName = "first_name"
            case lastName = "last_name"
            case pk
            case userName = "username"
        }
    }
}
