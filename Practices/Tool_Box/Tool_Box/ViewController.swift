//
//  ViewController.swift
//  Tool_Box
//
//  Created by 최용석 on 2018. 1. 15..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lengthTxt: UITextField!
    @IBOutlet var areaTxt: UITextField!
    @IBOutlet var temperatureTxt: UITextField!
    @IBOutlet var dataAmountTxt: UITextField!
    @IBOutlet var time6NumsTxt: UITextField!
    
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var dataAmountLabel: UILabel!
    @IBOutlet weak var time6NumsLabel: UILabel!
    
    @IBOutlet weak var lengthSW: UISwitch!
    @IBOutlet weak var areaSW: UISwitch!
    @IBOutlet weak var temperatureSW: UISwitch!
    @IBOutlet weak var dataAmountSW: UISwitch!
    
    @IBOutlet weak var inch: UILabel!
    @IBOutlet weak var cm: UILabel!
    @IBOutlet weak var m2: UILabel!
    @IBOutlet weak var py: UILabel!
    @IBOutlet weak var fD: UILabel!
    @IBOutlet weak var cD: UILabel!
    @IBOutlet weak var preDataAmount: UILabel!
    @IBOutlet weak var postDataAmount: UILabel!
    
    
    let toolbox: ToolBox = ToolBox()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func lengthCal(_ sender: UIButton) {
        if lengthSW.isOn == false {
            let tmpLength: Double = Double(lengthTxt!.text!)!
            lengthLabel.text = String(toolbox.inchToCM(inch: tmpLength))
        }
        else {
            let tmpLength: Double = Double(lengthTxt!.text!)!
            lengthLabel.text = String(toolbox.cmToInch(cm: tmpLength))
        }
    }
    
    @IBAction func areaCal(_ sender: UIButton) {
        if areaSW.isOn == false {
            let tmpArea: Double = Double(areaTxt!.text!)!
            areaLabel.text = String(toolbox.m2ToPy(m2: tmpArea))
        }
        else {
            let tmpArea: Double = Double(areaTxt!.text!)!
            areaLabel.text = String(toolbox.pyToM2(py: tmpArea))
        }
    }
    
    @IBAction func TemperatureCal(_ sender: UIButton) {
        if temperatureSW.isOn == false {
            let tmpTemperature: Double = Double(temperatureTxt!.text!)!
            temperatureLabel.text = String(toolbox.fDtoCD(fD: tmpTemperature))
        }
        else {
            let tmpTemperature: Double = Double(temperatureTxt!.text!)!
            temperatureLabel.text = String(toolbox.cDtoFD(cD: tmpTemperature))
        }
    }
    
    @IBAction func dataAmountCal(_ sender: UIButton) {
        let tmpDataAmount: Double = Double(dataAmountTxt!.text!)!
        dataAmountLabel.text = String(toolbox.amountChanging(dataAmount: tmpDataAmount))
    }
    
    @IBAction func time6NumsCal(_ sender: UIButton) {
        let tmpTime: Int = Int(time6NumsTxt!.text!)!
        time6NumsLabel.text = String(toolbox.timeChangingtoSecond(time: tmpTime))
    }
    
    @IBAction func lengthSWAction(_ sender: UISwitch) {
        lengthTxt.text = ""
        lengthLabel.text = ""
        if lengthSW.isOn == true{
            inch.text = "cm"
            cm.text = "inch"
        }
        else {
            inch.text = "inch"
            cm.text = "cm"
        }
    }
    
    @IBAction func areaSWAction(_ sender: UISwitch) {
        areaTxt.text = ""
        areaLabel.text = ""
        if areaSW.isOn == true{
            m2.text = "평"
            py.text = "m2"
        }
        else {
            m2.text = "m2"
            py.text = "평"
        }
    }
    
    @IBAction func temperatureSWAction(_ sender: UISwitch) {
        temperatureTxt.text = ""
        temperatureLabel.text = ""
        if temperatureSW.isOn == true{
            fD.text = "섭씨"
            cD.text = "화씨"
        }
        else {
            fD.text = "화씨"
            cD.text = "섭씨"
        }
    }
    
    @IBAction func dataAmountSWAction(_ sender: UISwitch) {
        dataAmountTxt.text = ""
        dataAmountLabel.text = ""
        if dataAmountSW.isOn == true{
            preDataAmount.text = "MB"
            postDataAmount.text = "GB"
        }
        else {
            preDataAmount.text = "GB"
            postDataAmount.text = "MB"
        }
    }
    
}

