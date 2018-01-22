//
//  ViewController.swift
//  ClassTest
//
//  Created by 최용석 on 2018. 1. 22..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var st1: Person = Person(name: "김씨", gender: "male", major: "mathematics")
        st1.setSubjects(subjectDic: ["수학":100, "영어":90, "국어":87, "미술":73, "음악":83, "싸움":67])
        var st2: Person = Person(name: "태권브이", gender: "male", major: "athletics")
        st2.setSubjects(subjectDic: ["수학":71, "영어":67, "국어":72, "미술":73, "음악":61, "싸움":100])
        var st3: Person = Person(name: "영희", gender: "female", major: "music")
        st3.setSubjects(subjectDic: ["수학":70, "영어":81, "국어":83, "미술":91, "음악":100, "싸움":67])
        var st4: Person = Person(name: "철수", gender: "male", major: "art")
        st4.setSubjects(subjectDic: ["수학":63, "영어":81, "국어":79, "미술":100, "음악":93, "싸움":69])
        var st5: Person = Person(name: "순희", gender: "female", major: "literature")
        st5.setSubjects(subjectDic: ["수학":73, "영어":90, "국어":100, "미술":82, "음악":85, "싸움":79])
        
        let cal = Calculator()
        
        cal.average(student: st1)
        cal.geniusHighSchool(stu1: st2, stu2: st4)
        cal.jjang(st1, st2, st3, st4, st5)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

