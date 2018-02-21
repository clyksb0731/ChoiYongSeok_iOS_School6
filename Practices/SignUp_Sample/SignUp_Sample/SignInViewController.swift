//
//  SignInViewController.swift
//  SignUp_Sample
//
//  Created by 최용석 on 2018. 2. 20..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

let key: String = "userID"
class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var idTF: UITextField!
    
    @IBOutlet weak var pwTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        idTF.delegate = self
        pwTF.delegate = self
        
        // keyboard style for TextField
        pwTF.keyboardType = .numberPad
        // password style
        pwTF.isSecureTextEntry = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInAction(_ sender: UIButton) {
        let signUpVC: SignUpViewController = self.storyboard!.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        
        // UserDefault로 ID 확인 구문 필요
        // **************************
        // UserDefault로 ID 확인 구문 필요
        
        var userDic = UserDefaults.standard.dictionary(forKey: key) as? Dictionary<String, Dictionary<String, String>>
        
        
        // check if pw's count proper or not
        if checkInputVaild() {
            self.navigationController?.pushViewController(signUpVC, animated: true)
        }
        else {
            let pwCountAlert: UIAlertController = UIAlertController(title: "Input Error", message: "ID or Password is not avilable", preferredStyle: .alert)
            let okAlertAction: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            pwCountAlert.addAction(okAlertAction)
            self.present(pwCountAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
    }
    
    // method, which checks 
    func checkInputVaild() -> Bool {
        // to check the count of password
        if let count = pwTF.text?.count, count > 4 {
            return true
        }
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 1 {
            pwTF.becomeFirstResponder()
        }
        else {
            pwTF.resignFirstResponder()
        }
        return true
    }
    
    
}
