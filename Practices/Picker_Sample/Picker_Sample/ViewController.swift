//
//  ViewController.swift
//  Picker_Sample
//
//  Created by 최용석 on 2018. 3. 6..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var picker: UIPickerView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelTopConstraint: NSLayoutConstraint!
    
    
    var list1: Array<String> = ["A", "B", "C"]
    var list2: Array<String> = ["가", "나", "다", "라", "마"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return list1.count
        }
        else {
            return list2.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return list1[row]
        }
        else {
            return list2[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("\(component), \(row)")
        labelTopConstraint.constant = 100
//        self.view.layoutIfNeeded()
    }
}

