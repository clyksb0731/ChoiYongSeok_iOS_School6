//
//  ViewController.swift
//  Functions
//
//  Created by 최용석 on 2018. 1. 15..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var upperSideTxt: UITextField!
    @IBOutlet var lowerSideTxt: UITextField!
    @IBOutlet var heightTxt: UITextField!
    @IBOutlet var radiusTxt: UITextField!
    
    @IBOutlet weak var squareSW: UISwitch!
    @IBOutlet weak var rectangleSW: UISwitch!
    @IBOutlet weak var circleSW: UISwitch!
    @IBOutlet weak var triangleSW: UISwitch!
    @IBOutlet weak var traperzoidSW: UISwitch!
    @IBOutlet weak var cubeSW: UISwitch!
    @IBOutlet weak var rectangleSolidSW: UISwitch!
    @IBOutlet weak var circularCylinderSW: UISwitch!
    @IBOutlet weak var sphereSW: UISwitch!
    @IBOutlet weak var coneSW: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        radiusTxt.isUserInteractionEnabled = false
//
//        if coneSW.isOn {
//            resultLabel.text = "Test succeeded in"
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sqareSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            if traperzoidSW.isOn == true {
                upperSideTxt.isUserInteractionEnabled = true
                lowerSideTxt.isUserInteractionEnabled = true
                heightTxt.isUserInteractionEnabled = true
                radiusTxt.isUserInteractionEnabled = true
            }
            else {
                
            }
            
            lowerSideTxt.isUserInteractionEnabled = true
        }
        else {
            if traperzoidSW.isOn == true {
                upperSideTxt.isUserInteractionEnabled = true
                lowerSideTxt.isUserInteractionEnabled = true
                heightTxt.isUserInteractionEnabled = true
                radiusTxt.isUserInteractionEnabled = true
            }
            else {
                
            }
            
        }
    }
    
    @IBAction func rectangleSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    
    @IBAction func circleSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    
    @IBAction func triangleSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    
    
    @IBAction func trapezoidSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    
    @IBAction func cubeSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    
    @IBAction func rectangleSolidSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    
    @IBAction func circularCylinderSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    
    @IBAction func sphereSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    
    @IBAction func coneSWAction(_ sender: UISwitch) {
        if sender.isOn == true {
            
        }
        else {
            
        }
    }
    

}

