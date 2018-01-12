//
//  ViewController.swift
//  FollowingDevelopmentOfCalculator
//
//  Created by 최용석 on 2018. 1. 12..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumDisplay: UILabel!
    @IBOutlet weak var secondNumDisplay: UILabel!
    @IBOutlet weak var resultDisplay: UILabel!
    
    var operationTemp: String = ""
    
    var firstNum: String = "0"
    var secondNum: String = "0"
    var resultNum: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clickDidNumber(_ sender: UIButton) {
        
        let numberStr = sender.titleLabel!.text!
        
        if operationTemp.count > 0 {
            //            let firstDisplay = secondNumDisplay.text!
            
            if secondNum == "0" {
                //                secondNumDisplay.text = numberStr
                secondNum = numberStr
            }
            else {
                secondNum = secondNum + numberStr
            }
            secondNumDisplay.text = secondNum
        }
        else {
            //            let firstDisplay = firstNumDisplay.text!
            
            if firstNum == "0" {
                resetDisplay()
                firstNum = numberStr
            }
            else {
                firstNum = firstNum + numberStr
            }
            firstNumDisplay.text = firstNum
        }
        
        
    }
    
    @IBAction func clickDidCancel(_ sender: UIButton) {
        resetData()
        resetDisplay()
        
    }
    
    @IBAction func clickDidResult(_ sender: UIButton) {
//        let secondNumStr = secondNumDisplay.text!
        if secondNum != "0" {
            let firstNum: Int = Int(self.firstNum)!
            let secondNum: Int = Int(self.secondNum)!
            let op: String = operationTemp
            
            let resultNum = calculation(firstNum: firstNum, operation: op, secondNum: secondNum)
            resultDisplay.text = String(resultNum)
            resetData()
        }
    }
    
    @IBAction func clickDidOperation(_ sender: UIButton) {
        let operStr = sender.titleLabel!.text!
        
//        let firstDisplay = firstNumDisplay.text!
        if firstNum != "0"
        {
            operationTemp = operStr
        }
        
    }
    
    //MARK: - Private Method
    
    
    /// Operation function
    ///
    /// - Parameters:
    ///   - firstNum: The number on the first display
    ///   - operation: operator between first number and second number clicked by user
    ///   - secondNum: The number on the second display
    /// - Returns: The result for operation with two numbers
    private func calculation(firstNum: Int, operation: String, secondNum: Int) -> Int {
        switch operation {
        case "+":
            print("더하기 연산")
            return firstNum + secondNum
        case "−":
            print("빼기 연산")
            return firstNum - secondNum
        case "×":
            print("곱하기 연산")
            return firstNum * secondNum
        case "÷":
            print("나누기 연산")
            return firstNum / secondNum
        default:
            print("여기 걸리면 에러임")
            return 0
        }
    }
    
    // DATA reset
    private func resetData() {
        firstNum = "0"
        secondNum = "0"
        resultNum = "0"
        operationTemp = ""
    }
    
    //UI reset
    private func resetDisplay() {
        firstNumDisplay.text = "0"
        secondNumDisplay.text = "0"
        resultDisplay.text = "0"
    }
}

