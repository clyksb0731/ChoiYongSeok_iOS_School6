//
//  ViewController.swift
//  UITest
//
//  Created by 최용석 on 2018. 1. 29..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewPackage: [UIView]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let tmpUpperView: UIView = UIView(frame: CGRect(x: 15, y: 15, width: 345, height: 100))
//        tmpUpperView.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1/2)
//        self.view.addSubview(tmpUpperView)
//        let tmpLowerView: UIView = UIView(frame: CGRect(x: 15, y: self.view.frame.height - 115, width: 345, height: 100))
//        tmpLowerView.backgroundColor = UIColor.black
//        self.view.addSubview(tmpLowerView)

//        let firstView: UIView = UIView(frame: CGRect(x: 15, y: 15, width: self.view.frame.width - 30, height: self.view.frame.height - 30))
//        firstView.backgroundColor = UIColor.blue
//        self.view.addSubview(firstView)
//        let secondView: UIView = UIView(frame: CGRect(x: 15, y: 15, width: firstView.frame.width - 30, height: firstView.frame.height - 30))
//        secondView.backgroundColor = UIColor.red
//        firstView.addSubview(secondView)
//        let thirdView: UIView = UIView(frame:CGRect(x: 15, y: 15, width: secondView.frame.width - 30, height: secondView.frame.height - 30))
//        thirdView.backgroundColor = UIColor.green
//        secondView.addSubview(thirdView)
        
        makeViews(number: 3)
        updateFrame()
        arrangeViews()
        
    }
    
    func makeViews(number num: Int) {
        viewPackage = Array<UIView>()
        
        for index in 0..<num {
            let tmpView: UIView = UIView()
            tmpView.backgroundColor = getColor(num: index)
            viewPackage?.append(tmpView)
        }
    }
    
    func updateFrame() {
        if let tmpViews = viewPackage, let _ = viewPackage?[0] {
            for index in 0..<tmpViews.count {
                let margin: CGFloat = 15
                
                if index == 0 {
                    tmpViews[index].frame = CGRect(x: margin, y: margin, width: self.view.frame.size.width - margin * 2, height: self.view.frame.size.height - margin * 2)
                }
                else {
                    tmpViews[index].frame = CGRect(x: margin, y: margin, width: tmpViews[index - 1].frame.size.width - margin * 2, height: tmpViews[index - 1].frame.size.height - margin * 2)
                }
            }
        }
    }
    
    func arrangeViews() {
        if let tmpViews = viewPackage, let _ = viewPackage?[0] {
            for index in 0..<tmpViews.count {
                if index == 0 {
                    self.view.addSubview(tmpViews[index])
                }
                else {
                    tmpViews[index - 1].addSubview(tmpViews[index])
                }
            }
        }
    }
    
    func getColor(num: Int) -> UIColor {
        switch num % 3 {
        case 1:
            return UIColor.red
        case 2:
            return UIColor.blue
        default:
            return UIColor.green
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

