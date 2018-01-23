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
        
        let st1: Person = Person(name: "Kim", major: "Computer Science", gender: "male")
        st1.setSubjects(dicSubs: ["수학":85, "영어":90, "컴퓨터":100, "체육":65, "국어":56])
        
        let st2: Person = Person(name: "Lee", major: "Athletics", gender: "male")
        st2.setSubjects(dicSubs: ["수학":56, "영어":60, "컴퓨터":30, "체육":100, "국어":45])
        
        let st3: Person = Person(name: "Park", major: "Mathematics", gender: "male")
        st3.setSubjects(dicSubs: ["수학":100, "영어":80, "컴퓨터":82, "체육":50, "국어":83])
        
        let st4: Person = Person(name: "Choi", major: "Design", gender: "female")
        st4.setSubjects(dicSubs: ["수학":81, "영어":79, "컴퓨터":84, "체육":54, "국어":83])
        
        let st5: Person = Person(name: "Seo", major: "Literature", gender: "female")
        st5.setSubjects(dicSubs: ["수학":65, "영어":93, "컴퓨터":74, "체육":62, "국어":100])
        
        let cal: Calculator = Calculator()
        
        let winner: Person = cal.compareSameSubjectBtw(subject: "수학", firstPerson: st1, secondPerson: st4)
        print("\(st1.name)와 \(st4.name)의 수학 점수를 비교해 보니 \(winner.name)의 점수가 더 높다.")
        
        let aver1: Double = cal.subjectsAverage(of: st1)
        print("\(st1.name)이 수강하는 과목들의 평균은 \(aver1)이다")
        let aver2: Double = cal.subjectsAverage(of: st5)
        print("\(st5.name)이 수강하는 과목들의 평균은 \(aver2)이다")
        
        let bestOne: Person! = cal.whoIsTheBestOneforOneSubject(subject: "컴퓨터", people: st1, st2, st3, st4, st5)
        print("학생들 중 컴퓨터의 점수가 가장 높은 사람은 \(bestOne.name)이다.")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

