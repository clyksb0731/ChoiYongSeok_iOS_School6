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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickDidNumber(_ sender: UIButton) {
        
        if operationTemp.count > 0 {
            let numberStr = sender.titleLabel!.text!
            let firstDisplay = secondNumDisplay.text!
            if firstDisplay == "0" {
                secondNumDisplay.text = numberStr
            }
            else {
                secondNumDisplay.text = secondNumDisplay.text! + numberStr
            }
        }
        else {
            
            let numberStr = sender.titleLabel!.text!
            let firstDisplay = firstNumDisplay.text!
            if firstDisplay == "0" {
                firstNumDisplay.text = numberStr
            }
            else {
                firstNumDisplay.text = firstNumDisplay.text! + numberStr
            }
        }
        
        
    }
    
    @IBAction func clickDidCancel(_ sender: UIButton) {
        firstNumDisplay.text = "0"
        secondNumDisplay.text = "0"
        resultDisplay.text = "0"
        
        operationTemp = ""
        
    }
    
    @IBAction func clickDidResult(_ sender: UIButton) {
        let secondNumStr = secondNumDisplay.text!
        if secondNumStr != "0" {
            let firstNum: Int = Int(firstNumDisplay.text!)!
            let secondNum: Int = Int(secondNumDisplay.text!)!
            let op: String = operationTemp
            
            let resultNum = calculation(firstNum: firstNum, operation: op, secondNum: secondNum)
            resultDisplay.text = String(resultNum)
        }
    }
    
    @IBAction func clickDidOperation(_ sender: UIButton) {
        let operStr = sender.titleLabel!.text!
        
        let firstDisplay = firstNumDisplay.text!
        if firstDisplay != "0"
        {
             operationTemp = operStr
        }

    }
    
    //MARK - Private Method
    
    
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
    
}

