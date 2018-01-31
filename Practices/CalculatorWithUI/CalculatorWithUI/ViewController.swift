//
//  ViewController.swift
//  CalculatorWithUI
//
//  Created by 최용석 on 2018. 1. 30..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var displaySection: UIView?
//    var keypadSection: UIView?
    var displayLabelList: [UILabel]?
    var numberButtonList: [UIButton]?
    var etcButtonList: [UIButton]?
    var operButtonList: [UIButton]?
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set basic section
//        createFrame()
        setBasicSection()
        displayLabelList = createDisplayLabel(number: 1)
        if let tmpDLL = displayLabelList, !((displayLabelList?.isEmpty)!) {
            
        }
        
        
        
        // Create display label
        
        // Create button
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setBasicSection() {
        // Set length values
        let basicSectionMargin: CGFloat = 5
        let basicSectionHeight: CGFloat = self.view.bounds.size.height
        let basicSectionWidth: CGFloat = self.view.bounds.size.width
        let btnWidth: CGFloat = (basicSectionWidth - basicSectionMargin * 2) / 4
        let keypadHeight: CGFloat = btnWidth * 5
        let keypadWidth: CGFloat = btnWidth * 4
        let displayHeight: CGFloat = basicSectionHeight - basicSectionMargin - keypadHeight - 20
        var offsetY: CGFloat = basicSectionHeight

        // Keypad section
        var keypadSection = UIView(frame: CGRect(x: basicSectionMargin, y: basicSectionHeight - basicSectionMargin - keypadHeight, width: keypadWidth, height: keypadHeight))
        offsetY = offsetY - basicSectionMargin - keypadSection.bounds.size.height
        keypadSection.backgroundColor = .green
        
        // Display section
        var displaySection: UIView = UIView(frame: CGRect(x: basicSectionMargin, y: offsetY - displayHeight, width: self.view.bounds.size.width - basicSectionMargin * 2, height: displayHeight))
        displaySection.backgroundColor = .gray
        
        
        
        self.view.addSubview(displaySection)
        self.view.addSubview(keypadSection)
    }
    
    func createDisplayLabel(number num: Int) -> [UILabel] {
        var labelList: [UILabel] = []
        
        for _ in 0..<num {
            var tmpLabel: UILabel = UILabel()
            labelList.append(tmpLabel)
        }
        return labelList
    }
    

    
//    @objc func actionBtn(_ sender: UIButton) {
//        print("Test button codes")
//    }
    
//    func createFrame() {
//
//        // Make two root section,
//        // 1. Display to show the calculated result
//        // 2. Keypad of buttons
//        let sectionMargin: CGFloat = 5
//        let rootHeight: CGFloat = self.view.bounds.size.height
//        let rootWidth: CGFloat = self.view.bounds.size.width
//        let btnWidth: CGFloat = (rootWidth - sectionMargin * 2) / 4
//        let keypadHeight: CGFloat = btnWidth * 5
//        let keypadWidth: CGFloat = btnWidth * 4
//        let displayHeight: CGFloat = rootHeight - keypadHeight - sectionMargin * 2
//
//        keypadSection = UIView(frame: CGRect(x: sectionMargin, y: rootHeight - sectionMargin - keypadHeight, width: keypadWidth, height: keypadHeight))
//        displaySection = UIView(frame: CGRect(x: sectionMargin, y: rootHeight - sectionMargin - keypadHeight - displayHeight, width: keypadWidth, height: displayHeight))
//
//        if let tmpKeySection = keypadSection, let tmpDisSection = displaySection {
//            self.view.addSubview(tmpKeySection)
//            self.view.addSubview(tmpDisSection)
//        }
//
//        // Divide keypad section
//        // Optional reference binding -> possible to read the reference directly ************
//        if let tmpKeypadSection = keypadSection {
//            // Make number keypad
//            var numKeypad: UIView = UIView(frame: CGRect(x: 0, y: tmpKeypadSection.bounds.size.height - btnWidth * 4, width: btnWidth * 3, height: btnWidth * 4))
//            numKeypad.backgroundColor = .gray  // temporary color to recognize
//
//            //Make etc keypad
//            var etcKeypad: UIView = UIView(frame: CGRect(x: 0, y: 0, width: btnWidth * 3, height: btnWidth))
//            etcKeypad.backgroundColor = .gray  // temporary color to recognize
//
//            //Make operation keypad
//            var operKeypad: UIView = UIView(frame: CGRect(x: btnWidth * 3, y: 0, width: btnWidth, height: btnWidth * 5))
//            operKeypad.backgroundColor = .gray // temporary color to recognize
//
//            tmpKeypadSection.addSubview(numKeypad)
//            tmpKeypadSection.addSubview(etcKeypad)
//            tmpKeypadSection.addSubview(operKeypad)
//
//            fillOut(to: numKeypad, with: UIView(frame: CGRect(x: 0, y: 0, width: btnWidth, height: btnWidth)), color: UIColor.blue)
//            fillOut(to: etcKeypad, with: UIView(frame: CGRect(x: 0, y: 0, width: btnWidth, height: btnWidth)), color: UIColor.cyan)
//            fillOut(to: operKeypad, with: UIView(frame: CGRect(x: 0, y: 0, width: btnWidth, height: btnWidth)), color: UIColor.purple)
//        }
//
//
//    }
//
//    func fillOut(to section: UIView?, with subUi: UIView?, color: UIColor) {
//        if let tmpUiView = section, let tmpSubUi = subUi {
//            for i in 0..<Int(tmpUiView.bounds.size.height / tmpSubUi.bounds.size.height){
//                for j in 0..<Int(tmpUiView.bounds.size.width / tmpSubUi.bounds.size.width) {
//                    var subView: UIView = UIView(frame: CGRect(x: tmpSubUi.bounds.size.width * CGFloat(j), y: tmpSubUi.bounds.size.height * CGFloat(i), width: tmpSubUi.bounds.size.width, height: tmpSubUi.bounds.size.height))
//                    subView.backgroundColor = color
//                    subView.layer.borderWidth = 1
//                    subView.layer.borderColor = UIColor.gray.cgColor
//                    tmpUiView.addSubview(subView)
//                }
//            }
//        }
//    }

}
