//
//  Person.swift
//  ClassTest_Object-Oriented
//
//  Created by 최용석 on 2018. 1. 23..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class Person {
    var name: String
//    var major: String
    var gender: String
//    var subjects: [Subject]?
    
    init(name: String, gender: String) {
        self.name = name
//        self.major = major
        self.gender = gender
//        self.subjects = []
    }
    
//    func setSubjects(dicSubs dicArr: [String:Int]) {
//        for (name, score) in dicArr {
//            addSubject(name: name, score: score)
//        }
//    }
//    
//    private func addSubject(name: String, score: Int) {
//        guard let subjects = self.subjects else {
//            return
//        }
//        
//        self.subjects!.append(Subject(name: name, score: score))
//    }
//    
//    /// 과목의 점수 추출
//    ///
//    /// - Parameter sub: 찾는 과목 이름
//    /// - Returns: 찾는 과목의 점수
//    func extractSubjectScore(subject sub: String) -> Int {
//        guard let subjects = self.subjects else {
//            return 0
//        }
//        
//        var tmpScore: Int = 0
//        
//        for subject in subjects {
//            if subject.name == sub {
//                tmpScore = subject.score
//            }
//        }
//        
//        return tmpScore
//    }
    
}
