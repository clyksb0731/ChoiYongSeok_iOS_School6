//
//  SignUpViewController.swift
//  SignUp_Sample
//
//  Created by 최용석 on 2018. 2. 18..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var idTF: UITextField!
    
    @IBOutlet weak var pwTF: UITextField!
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var ageTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBackToSignInPageAction(_ sender: UIButton) {
    }
    
    @IBAction func confirmToSaveUserInfoAction(_ sender: UIButton) {
    }
    

}
