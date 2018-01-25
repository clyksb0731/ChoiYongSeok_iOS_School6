//
//  Student.swift
//  ClassTest_Object-Oriented
//
//  Created by 최용석 on 2018. 1. 25..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class Student: Person {
    var schoolGrade: Int
    var major: String
    var subjects: [Subject]?
    
    init(schoolGrade: Int, major: String, name: String, gender: String) {
        self.schoolGrade = schoolGrade
        self.major = major
        super.init(name: name, gender: gender)
        self.subjects = []
    }
    
    func setSubjects(dicSubs dicArr: [String:Int]) {
        for (name, score) in dicArr {
            addSubject(name: name, score: score)
        }
    }
    
    
    private func addSubject(name: String, score: Int) {
        guard let _ = self.subjects else {
            return
        }
        //
        if schoolGrade == 3 {
            self.subjects!.append(Subject(name: name, score: score, hasGrade: true))
        }
        else {
            self.subjects!.append(Subject(name: name, score: score, hasGrade: false))
        }
        
    }
    
    /// 과목의 점수 추출
    ///
    /// - Parameter sub: 찾는 과목 이름
    /// - Returns: 찾는 과목의 점수
    func extractSubjectScore(subject sub: String) -> Int {
        guard let subjects = self.subjects else {
            return 0
        }
        
        var tmpScore: Int = 0
        
        for subject in subjects {
            if subject.name == sub {
                tmpScore = subject.score
            }
        }
        
        return tmpScore
    }
    
}
