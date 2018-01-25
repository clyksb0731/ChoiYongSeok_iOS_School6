//
//  Subject.swift
//  ClassTest_Object-Oriented
//
//  Created by 최용석 on 2018. 1. 23..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

struct Subject {
    var name: String
    var score: Int
    var grade: String?
    
    init(name: String, score: Int, hasGrade: Bool) {
        self.name = name
        self.score = score
        matchGrade(hasGrade: hasGrade)
    }
    
    private mutating func matchGrade(hasGrade: Bool) {
        if hasGrade {
            switch(self.score) {
            case 95...:
                self.grade = "A+"
            case 90...94:
                self.grade = "A"
            case 85...89:
                self.grade = "B+"
            case 80...84:
                self.grade = "B"
            case 75...79:
                self.grade = "C+"
            case 70...74:
                self.grade = "C"
            case 65...69:
                self.grade = "D+"
            case 60...64:
                self.grade = "D"
            default:
                self.grade = "F"
            }
        }
    }

//    becuase of memberwiseinitializer
//    init(name: String, score: Int) {
//        self.name = name
//        self.score = score
//    }
}
