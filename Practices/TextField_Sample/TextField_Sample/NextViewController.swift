//
//  NextViewController.swift
//  TextField_Sample
//
//  Created by 최용석 on 2018. 2. 13..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var pwTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idTextField.delegate = self
        pwTextField.delegate = self
        nameTextField.delegate = self
        ageTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelHandler(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func confirmHandler(_ sender: UIButton) {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if idTextField.isFirstResponder {
           idTextField.resignFirstResponder()
           pwTextField.becomeFirstResponder()
        }
        else if pwTextField.isFirstResponder {
            pwTextField.resignFirstResponder()
            nameTextField.becomeFirstResponder()
            
        }
        else if nameTextField.isFirstResponder {
            nameTextField.resignFirstResponder()
            ageTextField.becomeFirstResponder()
            
        }
        else if ageTextField.isFirstResponder {
            ageTextField.resignFirstResponder()
        }
        return true
    }
}
