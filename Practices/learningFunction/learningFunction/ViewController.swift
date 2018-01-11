//
//  ViewController.swift
//  learningFunction
//
//  Created by 최용석 on 2018. 1. 11..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lb1: UILabel! = UILabel()
    @IBOutlet var lb2: UILabel! = UILabel()
    @IBOutlet var lb3: UILabel! = UILabel()
    @IBOutlet var lb4: UILabel! = UILabel()
    @IBOutlet var lb5: UILabel! = UILabel()
    @IBOutlet var lb6: UILabel! = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let st1: Student = Student()
        let st2: Student = Student()
        let st3: Student = Student()
        
        // 학생 1 정보
        st1.age = 23
        st1.classEndTime = 15
        st1.className = "English"
        st1.name = "Kim Xi"
        st1.studentID = "A001"
        
        // 학생 1 행동 및 결과
        st1.study(studyTime: 8)
        let overtimeSt1: Int = st3.overTime(actualEndTime: 22)
        
        lb1.text = st1.name
        lb2.text = "\(overtimeSt1)"
        
        // 학생 2 정보
        st2.age = 27
        st2.classEndTime = 17
        st2.className = "Beverage"
        st2.name = "Gong Cha"
        st2.studentID = "B001"
        
        // 학생 2 행동 및 결과
        st2.study(studyTime: 5)
        let overtimeSt2: Int = st2.overTime(actualEndTime: 20)
        
        lb3.text = st2.name
        lb4.text = "\(overtimeSt2)"
        
        // 학생 3 정보
        st3.age = 15
        st3.classEndTime = 15
        st3.className = "Cook"
        st3.name = "Moms Touch"
        st3.studentID = "C001"
        
        // 학생 1 행동 및 결과
        st3.study(studyTime: 7)
        let overtimeSt3: Int = st3.overTime(actualEndTime: 21)
        
        lb5.text = st3.name
        lb6.text = "\(overtimeSt3)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

