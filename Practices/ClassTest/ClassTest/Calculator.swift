//
//  Calculator.swift
//  ClassTest
//
//  Created by 최용석 on 2018. 1. 22..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class Calculator {
    
    // 평균 구하기
    func average(student: Person) {
        var tmpScoreSum: Int = 0
        var tmpAverage: Double = 0
        
        for subject in student.subjects {
            tmpScoreSum += subject.score
        }
        tmpAverage = Double(tmpScoreSum) / Double(student.subjects.count)
        
        print("\(student.name)의 전공은 \(student.major), 성적의 평균은 \(tmpAverage)")
    }
    
    // 가장 싸움을 잘하는 아이는?
    func jjang(_ student: Person...) {
        var jjang: String = ""
        var jjang_math_score = 0
        
        for person in student {
            for hp in person.subjects {
                if hp.name == "싸움" {
                    if jjang_math_score < hp.score {
                        jjang_math_score = hp.score
                        jjang = person.name
                    }
                }
            }
        }
        print("싸움을 제일 잘하는 사람은 \(jjang) 입니다.")
    }
    
    // 고딩 둘중 수학점수가 높은 아이는?
    func geniusHighSchool(stu1: Person, stu2: Person) {
        var math_stu1: Int = 0
        var math_stu2: Int = 0
        
        for value in stu1.subjects {
            if value.name == "수학" {
                math_stu1 = value.score
            }
        }
        
        for value in stu2.subjects {
            if value.name == "수학" {
                math_stu2 = value.score
            }
        }
        
        if math_stu1 > math_stu2 {
            print("\(stu1.name)의 수학 점수가 더 높다.")
        }
        else {
            print("\(stu2.name)의 수학 점수가 더 높다.")
        }
    }
    
}
