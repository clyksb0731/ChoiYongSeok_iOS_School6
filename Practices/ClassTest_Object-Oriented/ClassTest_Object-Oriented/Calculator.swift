//
//  Calculator.swift
//  ClassTest_Object-Oriented
//
//  Created by 최용석 on 2018. 1. 23..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class Calculator {
    private var tmpSum: Int = 0
    
    /// 학생의 평균 구하기
    ///
    /// - Parameter p: 해당 학생
    /// - Returns: 해당 학생의 평균
    func subjectsAverage(of p: Student) -> Double {
        for subject in p.subjects! {
            tmpSum += subject.score
        }
        return Double(tmpSum) / Double(p.subjects!.count)
    }
    
    /// 두 사람의 같은 과목 비교하여 더 높은 점수를 갖는 사람 찾기
    ///
    /// - Parameters:
    ///   - subject: 비교할 과목
    ///   - firstPerson: 비교할 첫 번째 학생
    ///   - secondPerson: 비교할 두 번째 학생
    /// - Returns: 더 높은 과목 점수를 갖는 학생
    func compareSameSubjectBtw(subject sub: String, firstPerson p1: Student, secondPerson p2: Student) -> Student {
        var tmpScore_first: Int = 0
        var tmpScore_second: Int = 0
        
        // 첫 번째 학생의 해당 과목의 점수 추출
        for subject in p1.subjects! {
            if subject.name == sub {
                tmpScore_first = subject.score
            }
        }
        
        // 두 번째 학생의 해당 과목의 점수 추출
        for subject in p2.subjects! {
            if subject.name == sub {
                tmpScore_second = subject.score
            }
        }
        
        if tmpScore_first > tmpScore_second {
            return p1
        }
        else {
            return p2
        }
    }
    

    /// 어느 특정 과목에 대한 다수의 학생 점수를 비교하여 그 과목에 대해 가장 높은 점수를 갖는 학생 찾기
    ///
    /// - Parameters:
    ///   - sub: 비교할 과목
    ///   - among: 학생들
    /// - Returns: 제일 높은 점수를 갖는 학생
    func whoIsTheBestOneforOneSubject(subject sub: String, people among: Student...) -> Student? {
        var tmpTopScore: Int = 0
        var tmpPerson: Student?
        
        for person in among {
            for subject in person.subjects! {
                if subject.name == sub {                    
                    if subject.score > tmpTopScore {
                        tmpTopScore = subject.score
                        tmpPerson = person
                    }
                }
            }
        }
        return tmpPerson
    }
    
    func compareUniversityStudentGrade(subject: String, firstone st1: Student, secondone st2: 
        Student) -> Student? {
        guard st1.schoolGrade == 3 && st2.schoolGrade == 3 else {
            return nil
        }
        
        var valueOfGrade1: Double = 0
        var valueOfGrade2: Double = 0
        
        for sub in st1.subjects! {
            if sub.name == subject {
                switch sub.grade! {
                case "A+":
                    valueOfGrade1 = 4.5
                case "A":
                    valueOfGrade1 = 4.0
                case "B+":
                    valueOfGrade1 = 3.5
                case "B":
                    valueOfGrade1 = 3.0
                case "C+":
                    valueOfGrade1 = 2.5
                case "C":
                    valueOfGrade1 = 2.0
                case "D+":
                    valueOfGrade1 = 1.5
                case "D":
                    valueOfGrade1 = 1.0
                default:
                    valueOfGrade1 = 0
                }
            }
        }
        
        for sub in st2.subjects! {
            if sub.name == subject {
                switch sub.grade! {
                case "A+":
                    valueOfGrade2 = 4.5
                case "A":
                    valueOfGrade2 = 4.0
                case "B+":
                    valueOfGrade2 = 3.5
                case "B":
                    valueOfGrade2 = 3.0
                case "C+":
                    valueOfGrade2 = 2.5
                case "C":
                    valueOfGrade2 = 2.0
                case "D+":
                    valueOfGrade2 = 1.5
                case "D":
                    valueOfGrade2 = 1.0
                default:
                    valueOfGrade2 = 0
                }
            }
        }
        
        if valueOfGrade1 > valueOfGrade2 {
            return st1
        }
        else if valueOfGrade1 == valueOfGrade2 {
            print("******", valueOfGrade1, valueOfGrade2)
            return Student(schoolGrade: 0, major: "none", name: "s_a_m_e", gender: "none")
        }
        else {
            return st1
        }
    }
    
}
