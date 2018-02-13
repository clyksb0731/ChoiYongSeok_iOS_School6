//
//  ViewController.swift
//  TextField_Sample
//
//  Created by 최용석 on 2018. 2. 13..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        idTextField.delegate = self
        pwTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginHandler(_ sender: UIButton) {
        // 가입자 있는지 확인
        let nextVC: NextViewController = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        
        let alertVC: UIAlertController = UIAlertController(title: "No user...", message: "Do you want sign up?", preferredStyle: .alert)
        let yesAction: UIAlertAction = UIAlertAction(title: "Yes", style: .default) { (action) in
            self.present(nextVC, animated: true, completion: nil)
        }
        alertVC.addAction(yesAction)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertVC.addAction(cancelAction)        
        
        self.present(alertVC, animated: true, completion: nil)
        // 가입자 있는지 확인
    }
    
    @IBAction func signupHandler(_ sender: UIButton) {
        let nextVC: NextViewController = self.storyboard!.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        self.present(nextVC, animated: true, completion: nil)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if idTextField.isFirstResponder {
            idTextField.resignFirstResponder()
            pwTextField.becomeFirstResponder()
        }
        else if pwTextField.isFirstResponder {
            pwTextField.resignFirstResponder()
        }
        
        return true
    }
}

