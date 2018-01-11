//
//  Person.swift
//  learningFunction
//
//  Created by 최용석 on 2018. 1. 11..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class Student{
    var name: String = ""
    var age: Int = 0
    var className: String = ""
    var studentID: String = ""
    var classEndTime: Int = 18
    
    /// <#Description#>
    ///
    /// - Parameter time: <#time description#>
    func study(studyTime time:Int){
        print("\(self.name)은 학번이 \(studentID)로서 \(self.className)에서 \(time) 시간 만큼 공부를 했다.")
    }
    
    func overTime(actualEndTime time: Int) -> Int{
        let timeDistance: Int = time - self.classEndTime
        
        print("\(self.name)은 정상적으로 \(self.classEndTime)시에 끝나는데 오늘 총 \(timeDistance)시간 더 공부했다.")
        
        return timeDistance
    }    
}
