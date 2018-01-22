//
//  Person.swift
//  ClassTest
//
//  Created by 최용석 on 2018. 1. 22..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var gender: String
    var major: String
    
    var subjects: [Subject] = []
    
    init(name: String, gender: String, major: String) {
        self.name = name
        self.gender = gender
        self.major = major
    }
    
    func addSubject(name: String, score: Int) {
        subjects.append(Subject(name: name, score: score))
    }
    
    func setSubjects(subjectDic: [String:Int]) {
        for (name, score) in subjectDic {
            addSubject(name: name, score: score)
        }
    }
}
