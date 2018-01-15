//
//  ToolBox.swift
//  Tool_Box
//
//  Created by 최용석 on 2018. 1. 15..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import Foundation

class ToolBox {
    func inchToCM(inch: Double) -> Double {
        return 2.54 * inch
    }
    
    func cmToInch(cm: Double) -> Double{
        return cm / 2.54
    }
    
    func m2ToPy(m2: Double) -> Double {
        return m2 / 3.30579
    }
    
    func pyToM2(py: Double) -> Double {
        return py * 3.30579
    }
    
    func fDtoCD(fD: Double) -> Double {
        return (fD - 32) / 1.8
    }
    
    func cDtoFD(cD: Double) -> Double {
        return cD * 1.8 + 32
    }
    
    func amountChanging(dataAmount: Double) -> Double {
        return dataAmount / 1024
    }
    
    func timeChangingtoSecond(time: Int) -> Int {
        let tmpHour: Int = time / 10_000
        let tmpMin: Int = time / 100 % 100
        let tmpSec: Int = time % 100
        return tmpHour * 3600 + tmpMin * 60 + tmpSec
    }
}
