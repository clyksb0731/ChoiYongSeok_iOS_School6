//
//  functions.swift
//  Functions
//
//  Created by 최용석 on 2018. 1. 15..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class Functions {
    
    func squareArea(side: Int) -> Int {
        return side * side
    }
    
    func squareSurroundings(side: Int) -> Int {
        return side * 4
    }
    
    func rectangleArea(wide: Int, length: Int) -> Int {
        return wide * length
    }
    
    func rectangleSurroundings(wide: Int, length: Int) -> Int {
        return wide * 2 + length * 2
    }
    
    func circleArea(radius: Int) -> Double {
        return 3.14159 * Double(radius * radius)
    }
    
    func circleCircumference(radius: Int) -> Double {
        return 3.14159 * 2 * Double(radius)
    }
    
    func triangleArea(height: Int, lowerSide: Int) -> Double {
        return Double(height * lowerSide) / 2
    }
    
    func trapezoidArea(height: Int, upperSide: Int, lowerSide: Int) -> Double {
        return Double((upperSide + lowerSide) * height) / 2
    }
    
    func cubeVolume(side: Int) -> Int {
        return side * side * side
    }
    
    func rectangularSolidVolume(wide: Int, length: Int, height: Int) -> Int {
        return wide * length * height
    }
    
    func circularCylinderVolume(radius: Int, height: Int) -> Double {
        return 3.14159 * Double(radius * radius * height)
    }
    
    func sphereVolume(radius: Int) -> Double {
        return 3.14159 * Double(4 * radius * radius * radius) / 4
    }
    
    func coneVolume(radius: Int, height: Int) -> Double {
        return 3.14159 * Double(radius * radius * height) / 3
    }    
}
