//
//  Properties.swift
//  PropertyTest
//
//  Created by 최용석 on 2018. 1. 26..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class Properties {
    struct Point {
        var x: Double = 0.0, y: Double = 0.0
    }
    
    struct Size {
        var width: Double = 0.0, height: Double = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        var center: Point {
            get {
                let centerX = origin.x + (size.width / 2)
                let centerY = origin.y + (size.height / 2)
                return Point(x: centerX, y: centerY)
            }
            set {
                origin.x = newValue.x - (size.width / 2)
                origin.y = newValue.y - (size.height / 2)
            }
        }
    }
    
    // computed property
    var score: Int?
    var _grade: String?
    var grade: String? {
        get {
            if let score = self.score {
                switch score {
                case 95...:
                    return "A+"
                default:
                    return "F"
                }
            }
            return nil
        }
        set {
            if let tmpGrade = newValue {
                switch tmpGrade {
                case "A+":
                    _grade = "A+"
                default:
                    _grade = "F"
                }
            }
        }
    }
    
    // property observer
    var tmpStr: String = "" {
        didSet {
            print(oldValue)
        }
        willSet {
            _grade = newValue
        }
    }    
}
