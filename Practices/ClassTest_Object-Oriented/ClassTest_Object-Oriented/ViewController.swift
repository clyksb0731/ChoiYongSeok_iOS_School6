//
//  ViewController.swift
//  ClassTest_Object-Oriented
//
//  Created by 최용석 on 2018. 1. 23..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let st1: Person = Person(name: "Kim", major: "Computer Science", gender: "male")
//        st1.setSubjects(dicSubs: ["수학":85, "영어":90, "컴퓨터":100, "체육":65, "국어":56])
//
//        let st2: Person = Person(name: "Lee", major: "Athletics", gender: "male")
//        st2.setSubjects(dicSubs: ["수학":56, "영어":60, "컴퓨터":30, "체육":100, "국어":45])
//
//        let st3: Person = Person(name: "Park", major: "Mathematics", gender: "male")
//        st3.setSubjects(dicSubs: ["수학":100, "영어":80, "컴퓨터":82, "체육":50, "국어":83])
//
//        let st4: Person = Person(name: "Choi", major: "Design", gender: "female")
//        st4.setSubjects(dicSubs: ["수학":81, "영어":79, "컴퓨터":84, "체육":54, "국어":83])
//
//        let st5: Person = Person(name: "Seo", major: "Literature", gender: "female")
//        st5.setSubjects(dicSubs: ["수학":65, "영어":93, "컴퓨터":74, "체육":62, "국어":100])
        
        
        // Construct students' instances
        let st1: Student = Student(schoolGrade: 3, major: "Computer Science", name: "Kim", gender: "male")
        st1.setSubjects(dicSubs: ["수학":85, "영어":90, "컴퓨터":100, "체육":65, "국어":56])
        
        let st2: Student = Student(schoolGrade: 3, major: "Athletics", name: "Lee", gender: "male")
        st2.setSubjects(dicSubs: ["수학":56, "영어":60, "컴퓨터":30, "체육":100, "국어":45])
        
        let st3: Student = Student(schoolGrade: 2, major: "Mathematics", name: "Park", gender: "male")
        st3.setSubjects(dicSubs: ["수학":100, "영어":80, "컴퓨터":82, "체육":50, "국어":83])
        
        let st4: Student = Student(schoolGrade: 2, major: "Design", name: "Choi", gender: "female")
        st4.setSubjects(dicSubs: ["수학":81, "영어":79, "컴퓨터":84, "체육":54, "국어":83])
        
        let st5: Student = Student(schoolGrade: 1, major: "Literature", name: "Seo", gender: "male")
        st5.setSubjects(dicSubs: ["수학":65, "영어":93, "컴퓨터":74, "체육":62, "국어":100])
        
        // Construct calculator instance
        let cal: Calculator = Calculator()
        
        // Messages to calculator
        // compare two students' specific one subject
        let winner: Student = cal.compareSameSubjectBtw(subject: "수학", firstPerson: st1, secondPerson: st4)
        print("\(st1.name)와 \(st4.name)의 수학 점수를 비교해 보니 \(winner.name)의 점수가 더 높다.")
        
        // Get average on subjects of a specific student
        let aver1: Double = cal.subjectsAverage(of: st1)
        print("\(st1.name)이 수강하는 과목들의 평균은 \(aver1)이다")
        let aver2: Double = cal.subjectsAverage(of: st5)
        print("\(st5.name)이 수강하는 과목들의 평균은 \(aver2)이다")
        
        // Optional binding
        // Find the person which has the best score for the specific subject
        if let bestOne: Student = cal.whoIsTheBestOneforTheOne(subject: "컴퓨터", people: st1, st2, st3, st4, st5) {
            print("학생들 중 컴퓨터의 점수가 가장 높은 사람은 \(bestOne.name)이다.")
        }
        
        // Compare grade for the specific subject of two students
        if let winnerOfGrade = cal.compareUniversityStudentGrade(subject: "영어", firstone: st1, secondone: st2) {            
            
            if winnerOfGrade.name == "s_a_m_e" {
                print("\(st1.name)와 \(st2.name)의 영어 학점은 같다.")
            }
            else {
                print("\(st1.name)의 영어 학점은 \(getGrade(of: "영어", from: st1))이며 \(st2.name)의 영어 학점은 \(getGrade(of: "영어", from: st2))인데 이 둘중 영어 학점이 높은 사람은 \(winnerOfGrade.name)이다.")
            }
        }
    }
    
    func getGrade(of subject: String, from st: Student) -> String {
        for sub in st.subjects! {
            if sub.name == subject {
                return sub.grade!
            }
        }
        return "F"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

